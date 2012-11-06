class Classroom < ActiveRecord::Base
  
  belongs_to :course
  has_many :enrollments
  has_many :learners, :through => :enrollments

  before_create :create_id_hash
  before_create :set_dates
  
  attr_accessible :online_date, :ends, :starts

  ##############################################################
  # Public interface
  ##############################################################

  def to_param
    id_hash
  end

  ##############################################################
  # Private interface
  ##############################################################
  private

  def create_id_hash
    unique_string = self.course.title + "-" + self.online_date.to_s
    self.id_hash = Digest::SHA2.hexdigest(unique_string)[0..6]
  end

  def set_dates
    self.starts = self.online_date - 14
    self.ends = self.online_date + 14
  end
end
