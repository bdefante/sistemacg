require "spec_helper"

describe TelefonesController do
  describe "routing" do

    it "routes to #index" do
      get("/telefones").should route_to("telefones#index")
    end

    it "routes to #new" do
      get("/telefones/new").should route_to("telefones#new")
    end

    it "routes to #show" do
      get("/telefones/1").should route_to("telefones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/telefones/1/edit").should route_to("telefones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/telefones").should route_to("telefones#create")
    end

    it "routes to #update" do
      put("/telefones/1").should route_to("telefones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/telefones/1").should route_to("telefones#destroy", :id => "1")
    end

  end
end
