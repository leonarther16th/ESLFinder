# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agency do
    name "MyString"
    address "MyText"
    country_id 1
    city "MyString"
    website "MyString"
    email "MyString"
    ref_num "MyString"
    state "MyString"
  end
end
