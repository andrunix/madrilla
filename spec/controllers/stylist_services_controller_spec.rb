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

describe StylistServicesController do

  # This should return the minimal set of attributes required to create a valid
  # StylistService. As you add validations to StylistService, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StylistServicesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all stylist_services as @stylist_services" do
      stylist_service = StylistService.create! valid_attributes
      get :index, {}, valid_session
      assigns(:stylist_services).should eq([stylist_service])
    end
  end

  describe "GET show" do
    it "assigns the requested stylist_service as @stylist_service" do
      stylist_service = StylistService.create! valid_attributes
      get :show, {:id => stylist_service.to_param}, valid_session
      assigns(:stylist_service).should eq(stylist_service)
    end
  end

  describe "GET new" do
    it "assigns a new stylist_service as @stylist_service" do
      get :new, {}, valid_session
      assigns(:stylist_service).should be_a_new(StylistService)
    end
  end

  describe "GET edit" do
    it "assigns the requested stylist_service as @stylist_service" do
      stylist_service = StylistService.create! valid_attributes
      get :edit, {:id => stylist_service.to_param}, valid_session
      assigns(:stylist_service).should eq(stylist_service)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new StylistService" do
        expect {
          post :create, {:stylist_service => valid_attributes}, valid_session
        }.to change(StylistService, :count).by(1)
      end

      it "assigns a newly created stylist_service as @stylist_service" do
        post :create, {:stylist_service => valid_attributes}, valid_session
        assigns(:stylist_service).should be_a(StylistService)
        assigns(:stylist_service).should be_persisted
      end

      it "redirects to the created stylist_service" do
        post :create, {:stylist_service => valid_attributes}, valid_session
        response.should redirect_to(StylistService.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved stylist_service as @stylist_service" do
        # Trigger the behavior that occurs when invalid params are submitted
        StylistService.any_instance.stub(:save).and_return(false)
        post :create, {:stylist_service => {}}, valid_session
        assigns(:stylist_service).should be_a_new(StylistService)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        StylistService.any_instance.stub(:save).and_return(false)
        post :create, {:stylist_service => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested stylist_service" do
        stylist_service = StylistService.create! valid_attributes
        # Assuming there are no other stylist_services in the database, this
        # specifies that the StylistService created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        StylistService.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => stylist_service.to_param, :stylist_service => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested stylist_service as @stylist_service" do
        stylist_service = StylistService.create! valid_attributes
        put :update, {:id => stylist_service.to_param, :stylist_service => valid_attributes}, valid_session
        assigns(:stylist_service).should eq(stylist_service)
      end

      it "redirects to the stylist_service" do
        stylist_service = StylistService.create! valid_attributes
        put :update, {:id => stylist_service.to_param, :stylist_service => valid_attributes}, valid_session
        response.should redirect_to(stylist_service)
      end
    end

    describe "with invalid params" do
      it "assigns the stylist_service as @stylist_service" do
        stylist_service = StylistService.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        StylistService.any_instance.stub(:save).and_return(false)
        put :update, {:id => stylist_service.to_param, :stylist_service => {}}, valid_session
        assigns(:stylist_service).should eq(stylist_service)
      end

      it "re-renders the 'edit' template" do
        stylist_service = StylistService.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        StylistService.any_instance.stub(:save).and_return(false)
        put :update, {:id => stylist_service.to_param, :stylist_service => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested stylist_service" do
      stylist_service = StylistService.create! valid_attributes
      expect {
        delete :destroy, {:id => stylist_service.to_param}, valid_session
      }.to change(StylistService, :count).by(-1)
    end

    it "redirects to the stylist_services list" do
      stylist_service = StylistService.create! valid_attributes
      delete :destroy, {:id => stylist_service.to_param}, valid_session
      response.should redirect_to(stylist_services_url)
    end
  end

end
