require 'spec_helper'

describe "resolutions/show" do
  before(:each) do
    @resolution = assign(:resolution, stub_model(Resolution,
      :database_instance_id => 1,
      :city_id => 2,
      :prior_to_joining_campaign => false,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
