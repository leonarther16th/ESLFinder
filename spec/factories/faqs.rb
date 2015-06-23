# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :faq do
    question "MyString"
    answer "MyText"
    category "MyString"
    active false
  end
end
