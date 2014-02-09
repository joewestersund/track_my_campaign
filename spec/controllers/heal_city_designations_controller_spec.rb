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

describe HealCityDesignationsController do

  # This should return the minimal set of attributes required to create a valid
  # HealCityDesignation. As you add validations to HealCityDesignation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "database_instance_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HealCityDesignationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all heal_city_designations as @heal_city_designations" do
      heal_city_designation = HealCityDesignation.create! valid_attributes
      get :index, {}, valid_session
      assigns(:heal_city_designations).should eq([heal_city_designation])
    end
  end

  describe "GET show" do
    it "assigns the requested heal_city_designation as @heal_city_designation" do
      heal_city_designation = HealCityDesignation.create! valid_attributes
      get :show, {:id => heal_city_designation.to_param}, valid_session
      assigns(:heal_city_designation).should eq(heal_city_designation)
    end
  end

  describe "GET new" do
    it "assigns a new heal_city_designation as @heal_city_designation" do
      get :new, {}, valid_session
      assigns(:heal_city_designation).should be_a_new(HealCityDesignation)
    end
  end

  describe "GET edit" do
    it "assigns the requested heal_city_designation as @heal_city_designation" do
      heal_city_designation = HealCityDesignation.create! valid_attributes
      get :edit, {:id => heal_city_designation.to_param}, valid_session
      assigns(:heal_city_designation).should eq(heal_city_designation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HealCityDesignation" do
        expect {
          post :create, {:heal_city_designation => valid_attributes}, valid_session
        }.to change(HealCityDesignation, :count).by(1)
      end

      it "assigns a newly created heal_city_designation as @heal_city_designation" do
        post :create, {:heal_city_designation => valid_attributes}, valid_session
        assigns(:heal_city_designation).should be_a(HealCityDesignation)
        assigns(:heal_city_designation).should be_persisted
      end

      it "redirects to the created heal_city_designation" do
        post :create, {:heal_city_designation => valid_attributes}, valid_session
        response.should redirect_to(HealCityDesignation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved heal_city_designation as @heal_city_designation" do
        # Trigger the behavior that occurs when invalid params are submitted
        HealCityDesignation.any_instance.stub(:save).and_return(false)
        post :create, {:heal_city_designation => { "database_instance_id" => "invalid value" }}, valid_session
        assigns(:heal_city_designation).should be_a_new(HealCityDesignation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HealCityDesignation.any_instance.stub(:save).and_return(false)
        post :create, {:heal_city_designation => { "database_instance_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested heal_city_designation" do
        heal_city_designation = HealCityDesignation.create! valid_attributes
        # Assuming there are no other heal_city_designations in the database, this
        # specifies that the HealCityDesignation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HealCityDesignation.any_instance.should_receive(:update).with({ "database_instance_id" => "1" })
        put :update, {:id => heal_city_designation.to_param, :heal_city_designation => { "database_instance_id" => "1" }}, valid_session
      end

      it "assigns the requested heal_city_designation as @heal_city_designation" do
        heal_city_designation = HealCityDesignation.create! valid_attributes
        put :update, {:id => heal_city_designation.to_param, :heal_city_designation => valid_attributes}, valid_session
        assigns(:heal_city_designation).should eq(heal_city_designation)
      end

      it "redirects to the heal_city_designation" do
        heal_city_designation = HealCityDesignation.create! valid_attributes
        put :update, {:id => heal_city_designation.to_param, :heal_city_designation => valid_attributes}, valid_session
        response.should redirect_to(heal_city_designation)
      end
    end

    describe "with invalid params" do
      it "assigns the heal_city_designation as @heal_city_designation" do
        heal_city_designation = HealCityDesignation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HealCityDesignation.any_instance.stub(:save).and_return(false)
        put :update, {:id => heal_city_designation.to_param, :heal_city_designation => { "database_instance_id" => "invalid value" }}, valid_session
        assigns(:heal_city_designation).should eq(heal_city_designation)
      end

      it "re-renders the 'edit' template" do
        heal_city_designation = HealCityDesignation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HealCityDesignation.any_instance.stub(:save).and_return(false)
        put :update, {:id => heal_city_designation.to_param, :heal_city_designation => { "database_instance_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested heal_city_designation" do
      heal_city_designation = HealCityDesignation.create! valid_attributes
      expect {
        delete :destroy, {:id => heal_city_designation.to_param}, valid_session
      }.to change(HealCityDesignation, :count).by(-1)
    end

    it "redirects to the heal_city_designations list" do
      heal_city_designation = HealCityDesignation.create! valid_attributes
      delete :destroy, {:id => heal_city_designation.to_param}, valid_session
      response.should redirect_to(heal_city_designations_url)
    end
  end

end
