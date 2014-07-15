json.array!(@schools) do |school|
  json.extract! school, :id, :name, :city_id, :country_id
  json.url school_url(school, format: :json)
end
