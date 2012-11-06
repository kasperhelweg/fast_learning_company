class Course < ActiveRecord::Base
  has_many :classrooms

  before_create :create_id_hash

  attr_accessible :desc, :short_desc, :title
  
  def to_param
    id_hash
  end
  
  ##############################################################
  # Private interface
  ##############################################################
  private
  
  def create_id_hash
    self.id_hash = Digest::SHA2.hexdigest(self.title)[0..6]
  end
end
