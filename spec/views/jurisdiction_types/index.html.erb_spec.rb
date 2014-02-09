require 'spec_helper'

describe "jurisdiction_types/index" do
  before(:each) do
    assign(:jurisdiction_types, [
      stub_model(JurisdictionType,
        :database_instance_id => 1,
        :name => "Name",
        :order_in_list => 2
      ),
      stub_model(JurisdictionType,
        :database_instance_id => 1,
        :name => "Name",
        :order_in_list => 2
      )
    ])
  end

  it "renders a list of jurisdiction_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
