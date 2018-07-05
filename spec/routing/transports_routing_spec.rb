require "rails_helper"

RSpec.describe TransportsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/transports").to route_to("transports#index")
    end

    it "routes to #new" do
      expect(:get => "/transports/new").to route_to("transports#new")
    end

    it "routes to #show" do
      expect(:get => "/transports/1").to route_to("transports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/transports/1/edit").to route_to("transports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/transports").to route_to("transports#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/transports/1").to route_to("transports#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/transports/1").to route_to("transports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/transports/1").to route_to("transports#destroy", :id => "1")
    end

  end
end
