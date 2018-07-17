require 'rails_helper'

RSpec.describe "ApiAccessAllowedIps", type: :request do
  describe "GET /api_access_allowed_ips" do
    it "works! (now write some real specs)" do
      get api_access_allowed_ips_path
      expect(response).to have_http_status(200)
    end
  end
end
