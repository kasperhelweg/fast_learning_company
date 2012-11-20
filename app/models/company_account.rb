class CompanyAccount < ActiveRecord::Base

  # Associations
  belongs_to :company
  has_one    :invoice_adress
  
  # attr_accessible :title, :body
end
