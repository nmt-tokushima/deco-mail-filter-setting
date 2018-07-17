require "rails_helper"

RSpec.describe ApiAccessAllowedIpsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api_access_allowed_ips").to route_to("api_access_allowed_ips#index")
    end

    it "routes to #new" do
      expect(:get => "/api_access_allowed_ips/new").to route_to("api_access_allowed_ips#new")
    end

    it "routes to #create" do
      expect(:post => "/api_access_allowed_ips").to route_to("api_access_allowed_ips#create")
    end

    it "routes to #destroy" do
      expect(:delete => "/api_access_allowed_ips/1").to route_to("api_access_allowed_ips#destroy", :id => "1")
    end

  end
end
