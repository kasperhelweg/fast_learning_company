class Resource < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  
  attr_accessible :resource
  has_attached_file :resource
end
