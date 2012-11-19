class Learner < User

  # Associations
  belongs_to :company
  has_many :enrollments 
  has_many :classrooms, :through => :enrollments
  
  # Validations
  validates_presence_of  :company

end
