require 'spec_helper'

describe "database_types/index" do
  before(:each) do
    assign(:database_types, [
      stub_model(DatabaseType,
        :name => "Name"
      ),
      stub_model(DatabaseType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of database_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
