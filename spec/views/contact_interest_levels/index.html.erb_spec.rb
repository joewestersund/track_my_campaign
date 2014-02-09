require 'spec_helper'

describe "contact_interest_levels/index" do
  before(:each) do
    assign(:contact_interest_levels, [
      stub_model(ContactInterestLevel,
        :database_instance_id => 1,
        :name => "Name",
        :order_in_list => 2
      ),
      stub_model(ContactInterestLevel,
        :database_instance_id => 1,
        :name => "Name",
        :order_in_list => 2
      )
    ])
  end

  it "renders a list of contact_interest_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
