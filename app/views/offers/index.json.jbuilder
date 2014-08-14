json.array!(@offers) do |offer|
  json.extract! offer, :id, :school_id, :weekly_price, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, :flag, :regions
  json.url offer_url(offer, format: :json)
end
