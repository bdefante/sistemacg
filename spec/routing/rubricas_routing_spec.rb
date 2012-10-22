require "spec_helper"

describe RubricasController do
  describe "routing" do

    it "routes to #index" do
      get("/rubricas").should route_to("rubricas#index")
    end

    it "routes to #new" do
      get("/rubricas/new").should route_to("rubricas#new")
    end

    it "routes to #show" do
      get("/rubricas/1").should route_to("rubricas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rubricas/1/edit").should route_to("rubricas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rubricas").should route_to("rubricas#create")
    end

    it "routes to #update" do
      put("/rubricas/1").should route_to("rubricas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rubricas/1").should route_to("rubricas#destroy", :id => "1")
    end

  end
end
