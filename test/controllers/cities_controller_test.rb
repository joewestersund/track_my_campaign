require 'test_helper'
include SessionsHelper

class CitiesControllerTest < ActionController::TestCase
  setup do
    sign_in users(:user1)
    @city1 = cities(:city1)
    @city2 = cities(:city2)
    @city3 = cities(:city3)

    @controller = Heal::CitiesController.new
  end

  test "should get cities index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cities)
  end

  test "should get new city" do
    get :new
    assert_response :success
  end

  test "should show city" do
    get :show, id: @city1
    assert_response :success
  end

  test "should create city" do
    assert_difference('Heal::City.count') do
      post :create, heal_city: { name: "#{@city1.name}_test", state: "Oregon", jurisdiction_type_id: 1 }
    end

    assert_redirected_to heal_city_path(Heal::City.last.id)
  end

  test "should get edit city" do
    get :edit, id: @city1
    assert_response :success
  end

  test "should update city" do
    patch :update, id: @city1, heal_city: { name: @city1.name }
    assert_redirected_to heal_city_path(@city1.id)
  end

  test "should destroy city" do
    assert_difference('Heal::City.count', -1) do
      delete :destroy, id: @city3
    end

    assert_redirected_to heal_cities_path
  end

end
