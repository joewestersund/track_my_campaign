require 'spec_helper'

describe "database_instances/show" do
  before(:each) do
    @database_instance = assign(:database_instance, stub_model(DatabaseInstance,
      :organization_id => 1,
      :database_type_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
