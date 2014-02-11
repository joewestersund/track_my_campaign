require 'spec_helper'

describe "policy_adoptions/index" do
  before(:each) do
    assign(:policy_adoptions, [
      stub_model(PolicyAdoption,
        :database_instance_id => 1,
        :city_id => 2,
        :prior_to_joining_campaign => false,
        :notes => "MyText"
      ),
      stub_model(PolicyAdoption,
        :database_instance_id => 1,
        :city_id => 2,
        :prior_to_joining_campaign => false,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of policy_adoptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
