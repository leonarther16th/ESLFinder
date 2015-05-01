json.array!(@admin_app_settings) do |admin_app_setting|
  json.extract! admin_app_setting, :id, :name, :value
  json.url admin_app_setting_url(admin_app_setting, format: :json)
end
