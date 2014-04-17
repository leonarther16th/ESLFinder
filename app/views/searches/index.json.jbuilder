json.array!(@searches) do |search|
  json.extract! search, :id, :city_id, :num_weeks, :num_seats, :start_date, :student_name, :program_id, :user_id
  json.url search_url(search, format: :json)
end
