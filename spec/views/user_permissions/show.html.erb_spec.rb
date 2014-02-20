require 'spec_helper'

describe "user_permissions/show" do
  before(:each) do
    @user_permission = assign(:user_permission, stub_model(UserPermission,
      :database_instance_id => 1,
      :user_id => 2,
      :read_only => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
