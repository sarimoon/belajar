require "spec_helper"

describe GeocitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/geocities").should route_to("geocities#index")
    end

    it "routes to #new" do
      get("/geocities/new").should route_to("geocities#new")
    end

    it "routes to #show" do
      get("/geocities/1").should route_to("geocities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/geocities/1/edit").should route_to("geocities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/geocities").should route_to("geocities#create")
    end

    it "routes to #update" do
      put("/geocities/1").should route_to("geocities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/geocities/1").should route_to("geocities#destroy", :id => "1")
    end

  end
end
