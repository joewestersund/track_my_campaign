require 'spec_helper'

describe "user_permissions/new" do
  before(:each) do
    assign(:user_permission, stub_model(UserPermission,
      :database_instance_id => 1,
      :user_id => 1,
      :read_only => false
    ).as_new_record)
  end

  it "renders new user_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_permissions_path, "post" do
      assert_select "input#user_permission_database_instance_id[name=?]", "user_permission[database_instance_id]"
      assert_select "input#user_permission_user_id[name=?]", "user_permission[user_id]"
      assert_select "input#user_permission_read_only[name=?]", "user_permission[read_only]"
    end
  end
end
