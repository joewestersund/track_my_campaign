require 'spec_helper'

describe "communications/show" do
  before(:each) do
    @communication = assign(:communication, stub_model(Communication,
      :database_instance_id => 1,
      :duration_minutes => 2,
      :communication_type_id => 3,
      :event_name => "Event Name",
      :contact_interest_level_id => 4,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Event Name/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
  end
end
