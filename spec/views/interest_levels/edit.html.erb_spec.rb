require 'spec_helper'

describe "interest_levels/edit" do
  before(:each) do
    @interest_level = assign(:interest_level, stub_model(InterestLevel,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit interest_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interest_level_path(@interest_level), "post" do
      assert_select "input#interest_level_database_instance_id[name=?]", "interest_level[database_instance_id]"
      assert_select "input#interest_level_name[name=?]", "interest_level[name]"
      assert_select "input#interest_level_order_in_list[name=?]", "interest_level[order_in_list]"
    end
  end
end
