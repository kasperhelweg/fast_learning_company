class Enrollment < ActiveRecord::Base
  
  belongs_to :learner
  belongs_to :classroom
  
  attr_accessible :classroom_id, :course_id, :learner_id, :status

  
end
