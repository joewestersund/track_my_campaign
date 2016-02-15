require 'test_helper'
include SessionsHelper

class ContactsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:user1)
    @contact1 = contacts(:contact1)
    @contact2 = contacts(:contact2)

    @controller = Heal::ContactsController.new
  end

  test "should get contact index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new contact" do
    get :new
    assert_response :success
  end

  test "should show contact" do
    get :show, id: @contact1
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Heal::Contact.count') do
      post :create, heal_contact: { first_name: "Bob", last_name: "Jones", email: "bob.jones@example.com", active: true }
    end

    assert_redirected_to heal_contact_path(Heal::Contact.last.id)
  end

  test "should get edit contact" do
    get :edit, id: @contact1
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact1, heal_contact: { first_name: "Robert" }
    assert_redirected_to heal_contact_path(@contact1.id)
  end

  test "should destroy contact" do
    assert_difference('Heal::Contact.count', -1) do
      delete :destroy, id: @contact1
    end

    assert_redirected_to heal_contacts_path
  end

end
