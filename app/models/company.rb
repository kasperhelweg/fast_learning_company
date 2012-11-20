class Company < User

  # Associations
  has_many :learners, :dependent => :destroy
  has_one  :company_account
  has_one  :company_details, :through => :company_account
  
  # Callbacks
  before_create     { set_status( 'new' ) }
  after_create      :setup_account

  def setup_account
    self.create_company_account
  end
end
