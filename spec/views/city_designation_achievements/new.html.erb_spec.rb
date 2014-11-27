require 'spec_helper'

describe "city_designation_achievements/new" do
  before(:each) do
    assign(:city_designation_achievement, stub_model(CityDesignationAchievement,
      :database_instance_id => 1,
      :city_id => 1,
      :city_designation_id => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new city_designation_achievement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", city_designation_achievements_path, "post" do
      assert_select "input#city_designation_achievement_database_instance_id[name=?]", "city_designation_achievement[database_instance_id]"
      assert_select "input#city_designation_achievement_city_id[name=?]", "city_designation_achievement[city_id]"
      assert_select "input#city_designation_achievement_city_designation_id[name=?]", "city_designation_achievement[city_designation_id]"
      assert_select "textarea#city_designation_achievement_notes[name=?]", "city_designation_achievement[notes]"
    end
  end
end
