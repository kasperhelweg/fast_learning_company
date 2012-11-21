class Account < ActiveRecord::Base
  
  # Associations
  belongs_to :accountable, :polymorphic => true

end
