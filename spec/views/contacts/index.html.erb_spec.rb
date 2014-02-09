require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :database_instance_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :city_id => 2,
        :organization_name => "Organization Name",
        :phone_number => "Phone Number",
        :email => "Email",
        :address_line_1 => "Address Line 1",
        :address_line_2 => "Address Line 2",
        :address_city => "Address City",
        :address_state => "Address State",
        :address_zip => "Address Zip",
        :interest_level_id => 3,
        :HEAL_champion => false,
        :HEAL_champion_notes => "MyText",
        :position_type_id => 4,
        :notes => "MyText"
      ),
      stub_model(Contact,
        :database_instance_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :city_id => 2,
        :organization_name => "Organization Name",
        :phone_number => "Phone Number",
        :email => "Email",
        :address_line_1 => "Address Line 1",
        :address_line_2 => "Address Line 2",
        :address_city => "Address City",
        :address_state => "Address State",
        :address_zip => "Address Zip",
        :interest_level_id => 3,
        :HEAL_champion => false,
        :HEAL_champion_notes => "MyText",
        :position_type_id => 4,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Organization Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line 2".to_s, :count => 2
    assert_select "tr>td", :text => "Address City".to_s, :count => 2
    assert_select "tr>td", :text => "Address State".to_s, :count => 2
    assert_select "tr>td", :text => "Address Zip".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
