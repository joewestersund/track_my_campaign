require 'spec_helper'

describe "organization_types/show" do
  before(:each) do
    @organization_type = assign(:organization_type, stub_model(OrganizationType,
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
