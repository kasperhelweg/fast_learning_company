class Company < User

  # Associations
  has_many :learners, :dependent => :destroy
  has_one  :account, :foreign_key => "accountant_id"
  
  # Callbacks
  before_create     { set_status( 'new' ) }
  after_create      :setup_account

  private
  def setup_account
    company_account = CompanyAccount.create
    account = self.build_account
    account.accountable = company_account
    self.account.save
  end
end
