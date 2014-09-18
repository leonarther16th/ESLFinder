json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :user_id, :order_id, :card_type, :card_name, :card_number, :expiry_month, :expiry_year, :cvc
  json.url reservation_url(reservation, format: :json)
end
