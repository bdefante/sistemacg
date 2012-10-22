require "spec_helper"

describe AgenciaController do
  describe "routing" do

    it "routes to #index" do
      get("/agencia").should route_to("agencia#index")
    end

    it "routes to #new" do
      get("/agencia/new").should route_to("agencia#new")
    end

    it "routes to #show" do
      get("/agencia/1").should route_to("agencia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/agencia/1/edit").should route_to("agencia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/agencia").should route_to("agencia#create")
    end

    it "routes to #update" do
      put("/agencia/1").should route_to("agencia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/agencia/1").should route_to("agencia#destroy", :id => "1")
    end

  end
end
