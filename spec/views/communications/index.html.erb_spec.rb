require 'spec_helper'

describe "communications/index" do
  before(:each) do
    assign(:communications, [
      stub_model(Communication,
        :database_instance_id => 1,
        :duration_minutes => 2,
        :communication_type_id => 3,
        :event_name => "Event Name",
        :contact_interest_level_id => 4,
        :notes => "MyText"
      ),
      stub_model(Communication,
        :database_instance_id => 1,
        :duration_minutes => 2,
        :communication_type_id => 3,
        :event_name => "Event Name",
        :contact_interest_level_id => 4,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of communications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Event Name".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
