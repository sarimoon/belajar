require "spec_helper"

describe GeodistrictsController do
  describe "routing" do

    it "routes to #index" do
      get("/geodistricts").should route_to("geodistricts#index")
    end

    it "routes to #new" do
      get("/geodistricts/new").should route_to("geodistricts#new")
    end

    it "routes to #show" do
      get("/geodistricts/1").should route_to("geodistricts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/geodistricts/1/edit").should route_to("geodistricts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/geodistricts").should route_to("geodistricts#create")
    end

    it "routes to #update" do
      put("/geodistricts/1").should route_to("geodistricts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/geodistricts/1").should route_to("geodistricts#destroy", :id => "1")
    end

  end
end
