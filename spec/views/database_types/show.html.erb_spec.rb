require 'spec_helper'

describe "database_types/show" do
  before(:each) do
    @database_type = assign(:database_type, stub_model(DatabaseType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
