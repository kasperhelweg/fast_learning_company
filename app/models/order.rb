class Order < ActiveRecord::Base

  # Associations
  has_many   :line_items
  belongs_to :account
  # attr_accessible :title, :body
end
