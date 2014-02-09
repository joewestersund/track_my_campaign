require 'spec_helper'

describe "position_types/show" do
  before(:each) do
    @position_type = assign(:position_type, stub_model(PositionType,
      :database_instance_id => "",
      :name => "",
      :order_in_list => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
