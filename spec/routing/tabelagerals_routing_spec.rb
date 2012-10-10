require "spec_helper"

describe TabelageralsController do
  describe "routing" do

    it "routes to #index" do
      get("/tabelagerals").should route_to("tabelagerals#index")
    end

    it "routes to #new" do
      get("/tabelagerals/new").should route_to("tabelagerals#new")
    end

    it "routes to #show" do
      get("/tabelagerals/1").should route_to("tabelagerals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tabelagerals/1/edit").should route_to("tabelagerals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tabelagerals").should route_to("tabelagerals#create")
    end

    it "routes to #update" do
      put("/tabelagerals/1").should route_to("tabelagerals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tabelagerals/1").should route_to("tabelagerals#destroy", :id => "1")
    end

  end
end
