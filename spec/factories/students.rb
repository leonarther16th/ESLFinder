# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    order_id 1
    first_name "MyString"
    last_name "MyString"
    country_id 1
  end
end
