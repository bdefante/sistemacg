require "spec_helper"

describe TiporubricasController do
  describe "routing" do

    it "routes to #index" do
      get("/tiporubricas").should route_to("tiporubricas#index")
    end

    it "routes to #new" do
      get("/tiporubricas/new").should route_to("tiporubricas#new")
    end

    it "routes to #show" do
      get("/tiporubricas/1").should route_to("tiporubricas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tiporubricas/1/edit").should route_to("tiporubricas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tiporubricas").should route_to("tiporubricas#create")
    end

    it "routes to #update" do
      put("/tiporubricas/1").should route_to("tiporubricas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tiporubricas/1").should route_to("tiporubricas#destroy", :id => "1")
    end

  end
end
