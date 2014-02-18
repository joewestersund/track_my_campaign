require 'spec_helper'

describe "organization_types/index" do
  before(:each) do
    assign(:organization_types, [
      stub_model(OrganizationType,
        :database_instance_id => "",
        :name => "",
        :order_in_list => 1
      ),
      stub_model(OrganizationType,
        :database_instance_id => "",
        :name => "",
        :order_in_list => 1
      )
    ])
  end

  it "renders a list of organization_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
