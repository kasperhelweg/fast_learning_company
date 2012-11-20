class Learner < User

  # Associations
  belongs_to :company
  has_many :enrollments 
  has_many :classrooms, :through => :enrollments
  
  # Callbacks
  before_validation :on => :create do set_status('staged') end 
  before_validation :generate_password, :on => :create
  # Validations
  validates_presence_of  :company

  private
  def generate_password
    self.password = self.password_confirmation = "123456" 
  end
  
end
