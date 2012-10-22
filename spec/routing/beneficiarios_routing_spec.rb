require "spec_helper"

describe BeneficiariosController do
  describe "routing" do

    it "routes to #index" do
      get("/beneficiarios").should route_to("beneficiarios#index")
    end

    it "routes to #new" do
      get("/beneficiarios/new").should route_to("beneficiarios#new")
    end

    it "routes to #show" do
      get("/beneficiarios/1").should route_to("beneficiarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beneficiarios/1/edit").should route_to("beneficiarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beneficiarios").should route_to("beneficiarios#create")
    end

    it "routes to #update" do
      put("/beneficiarios/1").should route_to("beneficiarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beneficiarios/1").should route_to("beneficiarios#destroy", :id => "1")
    end

  end
end
