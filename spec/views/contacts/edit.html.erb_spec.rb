require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :database_instance_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString",
      :city_id => 1,
      :organization_name => "MyString",
      :phone_number => "MyString",
      :email => "MyString",
      :address_line_1 => "MyString",
      :address_line_2 => "MyString",
      :address_city => "MyString",
      :address_state => "MyString",
      :address_zip => "MyString",
      :interest_level_id => 1,
      :HEAL_champion => false,
      :HEAL_champion_notes => "MyText",
      :position_type_id => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do
      assert_select "input#contact_database_instance_id[name=?]", "contact[database_instance_id]"
      assert_select "input#contact_first_name[name=?]", "contact[first_name]"
      assert_select "input#contact_last_name[name=?]", "contact[last_name]"
      assert_select "input#contact_title[name=?]", "contact[title]"
      assert_select "input#contact_city_id[name=?]", "contact[city_id]"
      assert_select "input#contact_organization_name[name=?]", "contact[organization_name]"
      assert_select "input#contact_phone_number[name=?]", "contact[phone_number]"
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "input#contact_address_line_1[name=?]", "contact[address_line_1]"
      assert_select "input#contact_address_line_2[name=?]", "contact[address_line_2]"
      assert_select "input#contact_address_city[name=?]", "contact[address_city]"
      assert_select "input#contact_address_state[name=?]", "contact[address_state]"
      assert_select "input#contact_address_zip[name=?]", "contact[address_zip]"
      assert_select "input#contact_interest_level_id[name=?]", "contact[interest_level_id]"
      assert_select "input#contact_HEAL_champion[name=?]", "contact[HEAL_champion]"
      assert_select "textarea#contact_HEAL_champion_notes[name=?]", "contact[HEAL_champion_notes]"
      assert_select "input#contact_position_type_id[name=?]", "contact[position_type_id]"
      assert_select "textarea#contact_notes[name=?]", "contact[notes]"
    end
  end
end
