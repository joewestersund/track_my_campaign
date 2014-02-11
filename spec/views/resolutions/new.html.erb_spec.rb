require 'spec_helper'

describe "resolutions/new" do
  before(:each) do
    assign(:resolution, stub_model(Resolution,
      :database_instance_id => 1,
      :city_id => 1,
      :prior_to_joining_campaign => false,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new resolution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resolutions_path, "post" do
      assert_select "input#resolution_database_instance_id[name=?]", "resolution[database_instance_id]"
      assert_select "input#resolution_city_id[name=?]", "resolution[city_id]"
      assert_select "input#resolution_prior_to_joining_campaign[name=?]", "resolution[prior_to_joining_campaign]"
      assert_select "textarea#resolution_notes[name=?]", "resolution[notes]"
    end
  end
end
