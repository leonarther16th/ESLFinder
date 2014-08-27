json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :offer_id, :state, :num_weeks, :total_price, :offer_code, :start_date, :expire_date, :num_seats
  json.url order_url(order, format: :json)
end
