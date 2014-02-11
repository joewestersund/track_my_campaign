require 'spec_helper'

describe "policy_adoptions/new" do
  before(:each) do
    assign(:policy_adoption, stub_model(PolicyAdoption,
      :database_instance_id => 1,
      :city_id => 1,
      :prior_to_joining_campaign => false,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new policy_adoption form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", policy_adoptions_path, "post" do
      assert_select "input#policy_adoption_database_instance_id[name=?]", "policy_adoption[database_instance_id]"
      assert_select "input#policy_adoption_city_id[name=?]", "policy_adoption[city_id]"
      assert_select "input#policy_adoption_prior_to_joining_campaign[name=?]", "policy_adoption[prior_to_joining_campaign]"
      assert_select "textarea#policy_adoption_notes[name=?]", "policy_adoption[notes]"
    end
  end
end
