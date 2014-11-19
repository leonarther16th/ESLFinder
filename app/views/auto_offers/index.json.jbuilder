json.array!(@auto_offers) do |auto_offer|
  json.extract! auto_offer, :id, :weekly_price, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, :flag, :pay_within, :course_id, :regular_price, :regions, :schools
  json.url auto_offer_url(auto_offer, format: :json)
end
