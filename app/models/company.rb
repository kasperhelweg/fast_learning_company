class Company < User
  has_many :learners
  # attr_accessible :title, :body
end
