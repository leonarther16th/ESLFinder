# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_state do
    user_id 1
    user_state "MyString"
    active false
  end
end
