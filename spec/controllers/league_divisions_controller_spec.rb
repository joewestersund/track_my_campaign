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

describe LeagueDivisionsController do

  # This should return the minimal set of attributes required to create a valid
  # LeagueDivision. As you add validations to LeagueDivision, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "database_instance_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LeagueDivisionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all league_divisions as @league_divisions" do
      league_division = LeagueDivision.create! valid_attributes
      get :index, {}, valid_session
      assigns(:league_divisions).should eq([league_division])
    end
  end

  describe "GET show" do
    it "assigns the requested league_division as @league_division" do
      league_division = LeagueDivision.create! valid_attributes
      get :show, {:id => league_division.to_param}, valid_session
      assigns(:league_division).should eq(league_division)
    end
  end

  describe "GET new" do
    it "assigns a new league_division as @league_division" do
      get :new, {}, valid_session
      assigns(:league_division).should be_a_new(LeagueDivision)
    end
  end

  describe "GET edit" do
    it "assigns the requested league_division as @league_division" do
      league_division = LeagueDivision.create! valid_attributes
      get :edit, {:id => league_division.to_param}, valid_session
      assigns(:league_division).should eq(league_division)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LeagueDivision" do
        expect {
          post :create, {:league_division => valid_attributes}, valid_session
        }.to change(LeagueDivision, :count).by(1)
      end

      it "assigns a newly created league_division as @league_division" do
        post :create, {:league_division => valid_attributes}, valid_session
        assigns(:league_division).should be_a(LeagueDivision)
        assigns(:league_division).should be_persisted
      end

      it "redirects to the created league_division" do
        post :create, {:league_division => valid_attributes}, valid_session
        response.should redirect_to(LeagueDivision.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved league_division as @league_division" do
        # Trigger the behavior that occurs when invalid params are submitted
        LeagueDivision.any_instance.stub(:save).and_return(false)
        post :create, {:league_division => { "database_instance_id" => "invalid value" }}, valid_session
        assigns(:league_division).should be_a_new(LeagueDivision)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LeagueDivision.any_instance.stub(:save).and_return(false)
        post :create, {:league_division => { "database_instance_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested league_division" do
        league_division = LeagueDivision.create! valid_attributes
        # Assuming there are no other league_divisions in the database, this
        # specifies that the LeagueDivision created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LeagueDivision.any_instance.should_receive(:update).with({ "database_instance_id" => "1" })
        put :update, {:id => league_division.to_param, :league_division => { "database_instance_id" => "1" }}, valid_session
      end

      it "assigns the requested league_division as @league_division" do
        league_division = LeagueDivision.create! valid_attributes
        put :update, {:id => league_division.to_param, :league_division => valid_attributes}, valid_session
        assigns(:league_division).should eq(league_division)
      end

      it "redirects to the league_division" do
        league_division = LeagueDivision.create! valid_attributes
        put :update, {:id => league_division.to_param, :league_division => valid_attributes}, valid_session
        response.should redirect_to(league_division)
      end
    end

    describe "with invalid params" do
      it "assigns the league_division as @league_division" do
        league_division = LeagueDivision.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LeagueDivision.any_instance.stub(:save).and_return(false)
        put :update, {:id => league_division.to_param, :league_division => { "database_instance_id" => "invalid value" }}, valid_session
        assigns(:league_division).should eq(league_division)
      end

      it "re-renders the 'edit' template" do
        league_division = LeagueDivision.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LeagueDivision.any_instance.stub(:save).and_return(false)
        put :update, {:id => league_division.to_param, :league_division => { "database_instance_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested league_division" do
      league_division = LeagueDivision.create! valid_attributes
      expect {
        delete :destroy, {:id => league_division.to_param}, valid_session
      }.to change(LeagueDivision, :count).by(-1)
    end

    it "redirects to the league_divisions list" do
      league_division = LeagueDivision.create! valid_attributes
      delete :destroy, {:id => league_division.to_param}, valid_session
      response.should redirect_to(league_divisions_url)
    end
  end

end