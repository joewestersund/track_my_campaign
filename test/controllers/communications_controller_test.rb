require 'test_helper'
include SessionsHelper

class CommunicationsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:user1)
    @comm1 = communications(:comm1)
    @comm2 = communications(:comm2)

    @controller = Heal::CommunicationsController.new
  end

  test "should get communication index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:communications)
  end

  test "should get new communication" do
    get :new
    assert_response :success
  end

  test "should show communication" do
    get :show, id: @comm1
    assert_response :success
  end

  test "should create communication" do
    assert_difference('Heal::Communication.count') do
      post :create, heal_communication: { date: "2016-02-01", duration_minutes: 30, communication_type_id: 1, interest_level_id: 1 }
    end

    assert_redirected_to heal_communication_path(Heal::Communication.last.id)
  end

  test "should get edit communication" do
    get :edit, id: @comm1
    assert_response :success
  end

  test "should update communication" do
    patch :update, id: @comm1, heal_communication: { date: "2016-02-15" }
    assert_redirected_to heal_communication_path(@comm1.id)
  end

  test "should destroy communication" do
    assert_difference('Heal::Communication.count', -1) do
      delete :destroy, id: @comm2
    end

    assert_redirected_to heal_communications_path
  end

end
