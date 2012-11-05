FactoryGirl.define do
  factory :user do
    name     "Our test user"
    email    "user@test.com"
    type     "User"
    password "foobar"
    password_confirmation "foobar"
  end
  
    factory :company do
    name     "Our company user"
    email    "company@test.com"
    password "foobar"
    password_confirmation "foobar"
  end

    factory :learner do    
    name     "Our learner user"
    email    "learner@test.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
