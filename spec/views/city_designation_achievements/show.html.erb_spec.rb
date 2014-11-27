require 'spec_helper'

describe "city_designation_achievements/show" do
  before(:each) do
    @city_designation_achievement = assign(:city_designation_achievement, stub_model(CityDesignationAchievement,
      :database_instance_id => 1,
      :city_id => 2,
      :city_designation_id => 3,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
  end
end
