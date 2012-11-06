class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :pageable, :polymorphic => true
  
  before_create :create_id_hash

  attr_accessible :title, :glyph, :desc, :content
  
  ##############################################################
  # Public interface
  ##############################################################

  #def to_param
  #  id_hash
  #end

  ##############################################################
  # Private interface
  ##############################################################
  private

  def create_id_hash
    unique_string = self.title + "-" + self.pageable_id.to_s
    self.id_hash = Digest::SHA2.hexdigest(unique_string)[0..6]
  end

end
