require 'rails_helper'

RSpec.describe "AppSettings", :type => :request do
  describe "GET /app_settings" do
    it "works! (now write some real specs)" do
      get app_settings_path
      expect(response.status).to be(200)
    end
  end
end
