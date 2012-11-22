class CompanyAccount < ActiveRecord::Base

  # Associations
  has_one    :account, :as => :accountable
    
  # attr_accessible :title, :body
end
