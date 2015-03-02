require "spec_helper"

describe RaligionsController do
  describe "routing" do

    it "routes to #index" do
      get("/raligions").should route_to("raligions#index")
    end

    it "routes to #new" do
      get("/raligions/new").should route_to("raligions#new")
    end

    it "routes to #show" do
      get("/raligions/1").should route_to("raligions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/raligions/1/edit").should route_to("raligions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/raligions").should route_to("raligions#create")
    end

    it "routes to #update" do
      put("/raligions/1").should route_to("raligions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/raligions/1").should route_to("raligions#destroy", :id => "1")
    end

  end
end
