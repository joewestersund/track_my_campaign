require 'spec_helper'

describe "cities/edit" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :database_instance_id => 1,
      :name => "MyString",
      :county => "MyString",
      :state => "MyString",
      :jurisdiction_type_id => 1,
      :league_division_id => 1,
      :population => 1,
      :kp_service_area => false,
      :under_resourced_or_disease_burden => false,
      :state_median_income => "9.99",
      :city_median_income => "9.99",
      :HEAL_city_designation_id => 1
    ))
  end

  it "renders the edit city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", city_path(@city), "post" do
      assert_select "input#city_database_instance_id[name=?]", "city[database_instance_id]"
      assert_select "input#city_name[name=?]", "city[name]"
      assert_select "input#city_county[name=?]", "city[county]"
      assert_select "input#city_state[name=?]", "city[state]"
      assert_select "input#city_jurisdiction_type_id[name=?]", "city[jurisdiction_type_id]"
      assert_select "input#city_league_division_id[name=?]", "city[league_division_id]"
      assert_select "input#city_population[name=?]", "city[population]"
      assert_select "input#city_kp_service_area[name=?]", "city[kp_service_area]"
      assert_select "input#city_under_resourced_or_disease_burden[name=?]", "city[under_resourced_or_disease_burden]"
      assert_select "input#city_state_median_income[name=?]", "city[state_median_income]"
      assert_select "input#city_city_median_income[name=?]", "city[city_median_income]"
      assert_select "input#city_HEAL_city_designation_id[name=?]", "city[HEAL_city_designation_id]"
    end
  end
end
