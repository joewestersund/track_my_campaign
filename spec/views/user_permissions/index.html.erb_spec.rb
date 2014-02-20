require 'spec_helper'

describe "user_permissions/index" do
  before(:each) do
    assign(:user_permissions, [
      stub_model(UserPermission,
        :database_instance_id => 1,
        :user_id => 2,
        :read_only => false
      ),
      stub_model(UserPermission,
        :database_instance_id => 1,
        :user_id => 2,
        :read_only => false
      )
    ])
  end

  it "renders a list of user_permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
