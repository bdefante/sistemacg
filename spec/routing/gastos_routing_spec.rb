require "spec_helper"

describe GastosController do
  describe "routing" do

    it "routes to #index" do
      get("/gastos").should route_to("gastos#index")
    end

    it "routes to #new" do
      get("/gastos/new").should route_to("gastos#new")
    end

    it "routes to #show" do
      get("/gastos/1").should route_to("gastos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gastos/1/edit").should route_to("gastos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gastos").should route_to("gastos#create")
    end

    it "routes to #update" do
      put("/gastos/1").should route_to("gastos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gastos/1").should route_to("gastos#destroy", :id => "1")
    end

  end
end
