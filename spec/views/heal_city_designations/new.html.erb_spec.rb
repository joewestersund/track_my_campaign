require 'spec_helper'

describe "heal_city_designations/new" do
  before(:each) do
    assign(:heal_city_designation, stub_model(HealCityDesignation,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new heal_city_designation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", heal_city_designations_path, "post" do
      assert_select "input#heal_city_designation_database_instance_id[name=?]", "heal_city_designation[database_instance_id]"
      assert_select "input#heal_city_designation_name[name=?]", "heal_city_designation[name]"
      assert_select "input#heal_city_designation_order_in_list[name=?]", "heal_city_designation[order_in_list]"
    end
  end
end
