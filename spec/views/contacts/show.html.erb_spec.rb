require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Title/)
    rendered.should match(/2/)
    rendered.should match(/Organization Name/)
    rendered.should match(/Phone Number/)
    rendered.should match(/Email/)
    rendered.should match(/Address Line 1/)
    rendered.should match(/Address Line 2/)
    rendered.should match(/Address City/)
    rendered.should match(/Address State/)
    rendered.should match(/Address Zip/)
    rendered.should match(/3/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
  end
end
