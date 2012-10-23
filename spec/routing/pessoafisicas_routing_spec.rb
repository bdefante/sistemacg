require "spec_helper"

describe PessoafisicasController do
  describe "routing" do

    it "routes to #index" do
      get("/pessoafisicas").should route_to("pessoafisicas#index")
    end

    it "routes to #new" do
      get("/pessoafisicas/new").should route_to("pessoafisicas#new")
    end

    it "routes to #show" do
      get("/pessoafisicas/1").should route_to("pessoafisicas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pessoafisicas/1/edit").should route_to("pessoafisicas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pessoafisicas").should route_to("pessoafisicas#create")
    end

    it "routes to #update" do
      put("/pessoafisicas/1").should route_to("pessoafisicas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pessoafisicas/1").should route_to("pessoafisicas#destroy", :id => "1")
    end

  end
end
