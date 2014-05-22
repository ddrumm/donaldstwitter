FactoryGirl.define do
  factory :user do
    name      "Donald Drummond"
    email     "Donald@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end