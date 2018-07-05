require 'rails_helper'

RSpec.describe "Transports", type: :request do
  describe "GET /transports" do
    it "works! (now write some real specs)" do
      get transports_path
      expect(response).to have_http_status(200)
    end
  end
end
