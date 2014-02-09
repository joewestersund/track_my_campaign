require 'spec_helper'

describe "communication_types/index" do
  before(:each) do
    assign(:communication_types, [
      stub_model(CommunicationType,
        :database_instance_id => 1,
        :name => "Name",
        :order_in_list => 2
      ),
      stub_model(CommunicationType,
        :database_instance_id => 1,
        :name => "Name",
        :order_in_list => 2
      )
    ])
  end

  it "renders a list of communication_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
