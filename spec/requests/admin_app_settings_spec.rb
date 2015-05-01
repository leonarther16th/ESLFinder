require 'rails_helper'

RSpec.describe "AdminAppSettings", :type => :request do
  describe "GET /admin_app_settings" do
    it "works! (now write some real specs)" do
      get admin_app_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
