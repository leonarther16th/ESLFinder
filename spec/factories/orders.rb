# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    user_id 1
    offer_id 1
    state "MyString"
    num_weeks 1
    total_price 1.5
    offer_code "MyString"
    start_date "2014-08-27"
    expire_date "2014-08-27"
    num_seats 1
  end
end
