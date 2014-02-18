require 'spec_helper'

describe "organization_types/new" do
  before(:each) do
    assign(:organization_type, stub_model(OrganizationType,
      :database_instance_id => "",
      :name => "",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new organization_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organization_types_path, "post" do
      assert_select "input#organization_type_database_instance_id[name=?]", "organization_type[database_instance_id]"
      assert_select "input#organization_type_name[name=?]", "organization_type[name]"
      assert_select "input#organization_type_order_in_list[name=?]", "organization_type[order_in_list]"
    end
  end
end
