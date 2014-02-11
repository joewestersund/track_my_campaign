require 'spec_helper'

describe "league_divisions/new" do
  before(:each) do
    assign(:league_division, stub_model(LeagueDivision,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new league_division form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", league_divisions_path, "post" do
      assert_select "input#league_division_database_instance_id[name=?]", "league_division[database_instance_id]"
      assert_select "input#league_division_name[name=?]", "league_division[name]"
      assert_select "input#league_division_order_in_list[name=?]", "league_division[order_in_list]"
    end
  end
end
