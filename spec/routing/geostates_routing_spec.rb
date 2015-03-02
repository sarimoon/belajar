require "spec_helper"

describe GeostatesController do
  describe "routing" do

    it "routes to #index" do
      get("/geostates").should route_to("geostates#index")
    end

    it "routes to #new" do
      get("/geostates/new").should route_to("geostates#new")
    end

    it "routes to #show" do
      get("/geostates/1").should route_to("geostates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/geostates/1/edit").should route_to("geostates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/geostates").should route_to("geostates#create")
    end

    it "routes to #update" do
      put("/geostates/1").should route_to("geostates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/geostates/1").should route_to("geostates#destroy", :id => "1")
    end

  end
end
