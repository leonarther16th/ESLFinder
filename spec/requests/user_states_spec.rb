require 'rails_helper'

RSpec.describe "UserStates", :type => :request do
  describe "GET /user_states" do
    it "works! (now write some real specs)" do
      get user_states_path
      expect(response.status).to be(200)
    end
  end
end
