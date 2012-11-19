class Enrollment < ActiveRecord::Base
  
  belongs_to :learner
  belongs_to :classroom
  belongs_to :course

  before_create   :create_id_hash

  # CHECK THEESE!!
  attr_accessible :classroom_id, :course_id, :learner_id, :status
  validates :learner_id, :uniqueness => { :scope => [:course_id, :classroom_id] }  

  def to_param
    id_hash
  end

  ##############################################################
  # Private interface
  ##############################################################
  private
   
  def create_id_hash
    self.id_hash = Digest::SHA2.hexdigest( self.learner_id.to_s + self.course_id.to_s )[0..6]
  end


end
