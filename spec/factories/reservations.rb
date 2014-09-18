# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    user_id 1
    order_id 1
    card_type "MyString"
    card_name "MyString"
    card_number "MyString"
    expiry_month "MyString"
    expiry_year "MyString"
    cvc "MyString"
  end
end
