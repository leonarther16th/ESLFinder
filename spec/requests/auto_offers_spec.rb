require 'rails_helper'

RSpec.describe "AutoOffers", :type => :request do
  describe "GET /auto_offers" do
    it "works! (now write some real specs)" do
      get auto_offers_path
      expect(response).to have_http_status(200)
    end
  end
end
