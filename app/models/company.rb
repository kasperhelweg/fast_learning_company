class Company < User

  # Associations
  has_many :learners
  has_one  :company_account
  
  # Callbacks
  before_create     { set_status( 'new' ) }
end
