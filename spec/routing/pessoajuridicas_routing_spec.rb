require "spec_helper"

describe PessoajuridicasController do
  describe "routing" do

    it "routes to #index" do
      get("/pessoajuridicas").should route_to("pessoajuridicas#index")
    end

    it "routes to #new" do
      get("/pessoajuridicas/new").should route_to("pessoajuridicas#new")
    end

    it "routes to #show" do
      get("/pessoajuridicas/1").should route_to("pessoajuridicas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pessoajuridicas/1/edit").should route_to("pessoajuridicas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pessoajuridicas").should route_to("pessoajuridicas#create")
    end

    it "routes to #update" do
      put("/pessoajuridicas/1").should route_to("pessoajuridicas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pessoajuridicas/1").should route_to("pessoajuridicas#destroy", :id => "1")
    end

  end
end
