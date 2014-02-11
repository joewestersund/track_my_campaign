require 'spec_helper'

describe "city_designations/edit" do
  before(:each) do
    @city_designation = assign(:city_designation, stub_model(CityDesignation,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit city_designation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", city_designation_path(@city_designation), "post" do
      assert_select "input#city_designation_database_instance_id[name=?]", "city_designation[database_instance_id]"
      assert_select "input#city_designation_name[name=?]", "city_designation[name]"
      assert_select "input#city_designation_order_in_list[name=?]", "city_designation[order_in_list]"
    end
  end
end
