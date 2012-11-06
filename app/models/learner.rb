class Learner < User
  belongs_to :company
  has_many :enrollments 
  has_many :classrooms, :through => :enrollments
  
  # attr_accessible :title, :body
end
