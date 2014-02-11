require 'spec_helper'

describe "resolutions/edit" do
  before(:each) do
    @resolution = assign(:resolution, stub_model(Resolution,
      :database_instance_id => 1,
      :city_id => 1,
      :prior_to_joining_campaign => false,
      :notes => "MyText"
    ))
  end

  it "renders the edit resolution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resolution_path(@resolution), "post" do
      assert_select "input#resolution_database_instance_id[name=?]", "resolution[database_instance_id]"
      assert_select "input#resolution_city_id[name=?]", "resolution[city_id]"
      assert_select "input#resolution_prior_to_joining_campaign[name=?]", "resolution[prior_to_joining_campaign]"
      assert_select "textarea#resolution_notes[name=?]", "resolution[notes]"
    end
  end
end
