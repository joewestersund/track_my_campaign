require 'spec_helper'

describe "cities/show" do
  before(:each) do
    @city = assign(:city, stub_model(City,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/County/)
    rendered.should match(/State/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/5/)
  end
end
