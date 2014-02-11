require 'spec_helper'

describe "city_designations/show" do
  before(:each) do
    @city_designation = assign(:city_designation, stub_model(CityDesignation,
      :database_instance_id => 1,
      :name => "Name",
      :order_in_list => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
  end
end
