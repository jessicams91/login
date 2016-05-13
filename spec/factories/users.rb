FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@email.com" }
    password '12345678'
    wrong_login_count 0
  end
end
