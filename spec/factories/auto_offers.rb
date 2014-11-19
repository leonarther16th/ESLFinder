# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auto_offer do
    weekly_price ""
    min_num_weeks ""
    max_num_weeks ""
    start_date ""
    end_date ""
    num_of_seats ""
    weekly_limit ""
    flag ""
    pay_within ""
    course_id ""
    regular_price ""
    regions ""
    schools "MyString"
  end
end
