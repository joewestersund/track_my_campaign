require 'spec_helper'

describe "cities/index" do
  before(:each) do
    assign(:cities, [
      stub_model(City,
        :database_instance_id => 1,
        :name => "Name",
        :county => "County",
        :state => "State",
        :jurisdiction_type_id => 2,
        :league_division_id => 3,
        :population => 4,
        :kp_service_area => false,
        :under_resourced_or_disease_burden => false,
        :state_median_income => "9.99",
        :city_median_income => "9.99",
        :HEAL_city_designation_id => 5
      ),
      stub_model(City,
        :database_instance_id => 1,
        :name => "Name",
        :county => "County",
        :state => "State",
        :jurisdiction_type_id => 2,
        :league_division_id => 3,
        :population => 4,
        :kp_service_area => false,
        :under_resourced_or_disease_burden => false,
        :state_median_income => "9.99",
        :city_median_income => "9.99",
        :HEAL_city_designation_id => 5
      )
    ])
  end

  it "renders a list of cities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
