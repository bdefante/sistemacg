require "spec_helper"

describe PaisController do
  describe "routing" do

    it "routes to #index" do
      get("/pais").should route_to("pais#index")
    end

    it "routes to #new" do
      get("/pais/new").should route_to("pais#new")
    end

    it "routes to #show" do
      get("/pais/1").should route_to("pais#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pais/1/edit").should route_to("pais#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pais").should route_to("pais#create")
    end

    it "routes to #update" do
      put("/pais/1").should route_to("pais#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pais/1").should route_to("pais#destroy", :id => "1")
    end

  end
end
