class User < ActiveRecord::Base
  
  has_secure_password  
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessible :name, :email, :password, :password_confirmation 
  before_create   :create_id_hash
  before_save     :downcase_email
  before_save     :fix_name
  before_save     { generate_token( :remember_token ) }
  
  
  validates       :name, presence: true, length: { maximum: 50 }  
  validates       :email, presence:   true,
                  format:     { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }
  
  validates       :password, presence: true, length: { minimum: 6 }, 
                  :if => lambda{ new_record?  || !password.nil? && !password.empty?  }
                  
  validates       :password_confirmation, presence: true,
                  :if => lambda{ !password.nil? && !password.empty? }

  ##############################################################
  # Public interface
  ##############################################################

  def send_password_reset
    generate_token( :reset_password_token )
    self.reset_password_sent_at = Time.zone.now
    save!
    UserMailer.password_reset( self ).deliver
  end
  
  def role?( role )
    return role.to_s.camelize == self.type
  end
  
  def to_param
    id_hash
  end

  def increment_sign_in_count
    self.sign_in_count += 1
    self.save!
  end

  ##############################################################
  # Private interface
  ##############################################################
  private
  
  def generate_token( column )
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?( column => self[column] )
  end
  
  def create_id_hash
    self.id_hash = Digest::SHA2.hexdigest( self.email )[0..5]
  end
  
  def downcase_email
    self.email = self.email.downcase
  end

  def fix_name
    self.name = construct_name( self.name.split )
  end
  
  def construct_name( name )
    if name.length == 0
      return ""
    else
      name.shift.capitalize + " " + construct_name( name )
    end
  end
end
