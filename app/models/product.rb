class Product < ActiveRecord::Base
  # Associations
  belongs_to :buyable, :polymorphic => true
  
  # attr_accessible :title, :body
end
