require 'spec_helper'

describe "contact_interest_levels/edit" do
  before(:each) do
    @contact_interest_level = assign(:contact_interest_level, stub_model(ContactInterestLevel,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit contact_interest_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_interest_level_path(@contact_interest_level), "post" do
      assert_select "input#contact_interest_level_database_instance_id[name=?]", "contact_interest_level[database_instance_id]"
      assert_select "input#contact_interest_level_name[name=?]", "contact_interest_level[name]"
      assert_select "input#contact_interest_level_order_in_list[name=?]", "contact_interest_level[order_in_list]"
    end
  end
end
