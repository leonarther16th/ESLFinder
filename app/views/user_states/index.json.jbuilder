json.array!(@user_states) do |user_state|
  json.extract! user_state, :id, :user_id, :user_state, :active
  json.url user_state_url(user_state, format: :json)
end
