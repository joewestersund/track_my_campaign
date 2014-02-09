require 'spec_helper'

describe "position_types/index" do
  before(:each) do
    assign(:position_types, [
      stub_model(PositionType,
        :database_instance_id => "",
        :name => "",
        :order_in_list => 1
      ),
      stub_model(PositionType,
        :database_instance_id => "",
        :name => "",
        :order_in_list => 1
      )
    ])
  end

  it "renders a list of position_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
