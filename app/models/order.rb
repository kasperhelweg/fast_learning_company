class Order < ActiveRecord::Base

  # Associations
  has_many   :line_items, :dependent => :destroy
  belongs_to :account
  # attr_accessible :title, :body
end
