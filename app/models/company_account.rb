class CompanyAccount < ActiveRecord::Base

  # Associations
  has_one    :account, :as => :accountable
  has_one    :invoice_adress
  has_many   :orders
  
  # attr_accessible :title, :body
end
