class LearnerAccount < ActiveRecord::Base
  
  # Associations
  has_one    :account, :as => :accountable
end
