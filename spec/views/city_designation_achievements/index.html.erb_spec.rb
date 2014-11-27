require 'spec_helper'

describe "city_designation_achievements/index" do
  before(:each) do
    assign(:city_designation_achievements, [
      stub_model(CityDesignationAchievement,
        :database_instance_id => 1,
        :city_id => 2,
        :city_designation_id => 3,
        :notes => "MyText"
      ),
      stub_model(CityDesignationAchievement,
        :database_instance_id => 1,
        :city_id => 2,
        :city_designation_id => 3,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of city_designation_achievements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
