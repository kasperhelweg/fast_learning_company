class Learner < User

  # Associations
  belongs_to :company
  has_one :account, :foreign_key => "accountant_id"
  has_many :enrollments 
  has_many :classrooms, :through => :enrollments
  
  # Callbacks
  after_create      :setup_account

  before_validation :on => :create do set_status('staged') end 
  before_validation :generate_password, :on => :create
 
  # Validations
  validates_presence_of  :company

  def get_invitations
    self.enrollments.where("status == 'invited'")
  end
  
  def get_enrollments
    self.enrollments.where("status == 'enrolled'")
  end
  
  private
  def generate_password
    self.password = self.password_confirmation = "123456" 
  end
  
  def setup_account
    company_account = LearnerAccount.create
    account = self.build_account
    account.accountable = company_account
    self.account.save
  end
end
