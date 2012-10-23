require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GastosController do

  # This should return the minimal set of attributes required to create a valid
  # Gasto. As you add validations to Gasto, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GastosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all gastos as @gastos" do
      gasto = Gasto.create! valid_attributes
      get :index, {}, valid_session
      assigns(:gastos).should eq([gasto])
    end
  end

  describe "GET show" do
    it "assigns the requested gasto as @gasto" do
      gasto = Gasto.create! valid_attributes
      get :show, {:id => gasto.to_param}, valid_session
      assigns(:gasto).should eq(gasto)
    end
  end

  describe "GET new" do
    it "assigns a new gasto as @gasto" do
      get :new, {}, valid_session
      assigns(:gasto).should be_a_new(Gasto)
    end
  end

  describe "GET edit" do
    it "assigns the requested gasto as @gasto" do
      gasto = Gasto.create! valid_attributes
      get :edit, {:id => gasto.to_param}, valid_session
      assigns(:gasto).should eq(gasto)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Gasto" do
        expect {
          post :create, {:gasto => valid_attributes}, valid_session
        }.to change(Gasto, :count).by(1)
      end

      it "assigns a newly created gasto as @gasto" do
        post :create, {:gasto => valid_attributes}, valid_session
        assigns(:gasto).should be_a(Gasto)
        assigns(:gasto).should be_persisted
      end

      it "redirects to the created gasto" do
        post :create, {:gasto => valid_attributes}, valid_session
        response.should redirect_to(Gasto.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gasto as @gasto" do
        # Trigger the behavior that occurs when invalid params are submitted
        Gasto.any_instance.stub(:save).and_return(false)
        post :create, {:gasto => {}}, valid_session
        assigns(:gasto).should be_a_new(Gasto)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Gasto.any_instance.stub(:save).and_return(false)
        post :create, {:gasto => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested gasto" do
        gasto = Gasto.create! valid_attributes
        # Assuming there are no other gastos in the database, this
        # specifies that the Gasto created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Gasto.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => gasto.to_param, :gasto => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested gasto as @gasto" do
        gasto = Gasto.create! valid_attributes
        put :update, {:id => gasto.to_param, :gasto => valid_attributes}, valid_session
        assigns(:gasto).should eq(gasto)
      end

      it "redirects to the gasto" do
        gasto = Gasto.create! valid_attributes
        put :update, {:id => gasto.to_param, :gasto => valid_attributes}, valid_session
        response.should redirect_to(gasto)
      end
    end

    describe "with invalid params" do
      it "assigns the gasto as @gasto" do
        gasto = Gasto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Gasto.any_instance.stub(:save).and_return(false)
        put :update, {:id => gasto.to_param, :gasto => {}}, valid_session
        assigns(:gasto).should eq(gasto)
      end

      it "re-renders the 'edit' template" do
        gasto = Gasto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Gasto.any_instance.stub(:save).and_return(false)
        put :update, {:id => gasto.to_param, :gasto => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested gasto" do
      gasto = Gasto.create! valid_attributes
      expect {
        delete :destroy, {:id => gasto.to_param}, valid_session
      }.to change(Gasto, :count).by(-1)
    end

    it "redirects to the gastos list" do
      gasto = Gasto.create! valid_attributes
      delete :destroy, {:id => gasto.to_param}, valid_session
      response.should redirect_to(gastos_url)
    end
  end

end
