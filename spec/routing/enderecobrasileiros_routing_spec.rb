require "spec_helper"

describe EnderecobrasileirosController do
  describe "routing" do

    it "routes to #index" do
      get("/enderecobrasileiros").should route_to("enderecobrasileiros#index")
    end

    it "routes to #new" do
      get("/enderecobrasileiros/new").should route_to("enderecobrasileiros#new")
    end

    it "routes to #show" do
      get("/enderecobrasileiros/1").should route_to("enderecobrasileiros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/enderecobrasileiros/1/edit").should route_to("enderecobrasileiros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/enderecobrasileiros").should route_to("enderecobrasileiros#create")
    end

    it "routes to #update" do
      put("/enderecobrasileiros/1").should route_to("enderecobrasileiros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/enderecobrasileiros/1").should route_to("enderecobrasileiros#destroy", :id => "1")
    end

  end
end
