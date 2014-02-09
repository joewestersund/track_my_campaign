require 'spec_helper'

describe "jurisdiction_types/new" do
  before(:each) do
    assign(:jurisdiction_type, stub_model(JurisdictionType,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new jurisdiction_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jurisdiction_types_path, "post" do
      assert_select "input#jurisdiction_type_database_instance_id[name=?]", "jurisdiction_type[database_instance_id]"
      assert_select "input#jurisdiction_type_name[name=?]", "jurisdiction_type[name]"
      assert_select "input#jurisdiction_type_order_in_list[name=?]", "jurisdiction_type[order_in_list]"
    end
  end
end
