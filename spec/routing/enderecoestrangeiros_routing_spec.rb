require "spec_helper"

describe EnderecoestrangeirosController do
  describe "routing" do

    it "routes to #index" do
      get("/enderecoestrangeiros").should route_to("enderecoestrangeiros#index")
    end

    it "routes to #new" do
      get("/enderecoestrangeiros/new").should route_to("enderecoestrangeiros#new")
    end

    it "routes to #show" do
      get("/enderecoestrangeiros/1").should route_to("enderecoestrangeiros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/enderecoestrangeiros/1/edit").should route_to("enderecoestrangeiros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/enderecoestrangeiros").should route_to("enderecoestrangeiros#create")
    end

    it "routes to #update" do
      put("/enderecoestrangeiros/1").should route_to("enderecoestrangeiros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/enderecoestrangeiros/1").should route_to("enderecoestrangeiros#destroy", :id => "1")
    end

  end
end
