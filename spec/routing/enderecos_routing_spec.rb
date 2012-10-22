require "spec_helper"

describe EnderecosController do
  describe "routing" do

    it "routes to #index" do
      get("/enderecos").should route_to("enderecos#index")
    end

    it "routes to #new" do
      get("/enderecos/new").should route_to("enderecos#new")
    end

    it "routes to #show" do
      get("/enderecos/1").should route_to("enderecos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/enderecos/1/edit").should route_to("enderecos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/enderecos").should route_to("enderecos#create")
    end

    it "routes to #update" do
      put("/enderecos/1").should route_to("enderecos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/enderecos/1").should route_to("enderecos#destroy", :id => "1")
    end

  end
end
