require "spec_helper"

describe GeocountriesController do
  describe "routing" do

    it "routes to #index" do
      get("/geocountries").should route_to("geocountries#index")
    end

    it "routes to #new" do
      get("/geocountries/new").should route_to("geocountries#new")
    end

    it "routes to #show" do
      get("/geocountries/1").should route_to("geocountries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/geocountries/1/edit").should route_to("geocountries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/geocountries").should route_to("geocountries#create")
    end

    it "routes to #update" do
      put("/geocountries/1").should route_to("geocountries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/geocountries/1").should route_to("geocountries#destroy", :id => "1")
    end

  end
end
