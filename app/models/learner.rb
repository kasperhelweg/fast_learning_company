class Learner < User

  # Associations
  belongs_to :company
  has_many :enrollments 
  has_many :classrooms, :through => :enrollments
  
  # Callbacks
  before_create     { set_status( 'staged' ) }
  before_validation :generate_password
  # Validations
  validates_presence_of  :company

  def generate_password
    self.password = self.password_confirmation = "123456" 
  end
  
end
