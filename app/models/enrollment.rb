class Enrollment < ActiveRecord::Base
  
  belongs_to :learner
  belongs_to :classroom
  belongs_to :course
  
  # CHECK THEESE!!
  attr_accessible :classroom_id, :course_id, :learner_id, :status
  validates :learner_id, :uniquness => { :scope => [:course_id, :classroom_id] }  
end
