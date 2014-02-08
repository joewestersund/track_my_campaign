require 'spec_helper'

describe "database_instances/index" do
  before(:each) do
    assign(:database_instances, [
      stub_model(DatabaseInstance,
        :organization_id => 1,
        :database_type_id => 2
      ),
      stub_model(DatabaseInstance,
        :organization_id => 1,
        :database_type_id => 2
      )
    ])
  end

  it "renders a list of database_instances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
