# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    school_id 1
    weekly_price 1.5
    min_num_weeks 1
    max_num_weeks 1
    start_date "2014-08-14"
    end_date "2014-08-14"
    num_of_seats 1
    weekly_limit 1
    flag "MyString"
    regions "MyString"
  end
end
