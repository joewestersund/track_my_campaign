require 'spec_helper'

describe "communication_types/new" do
  before(:each) do
    assign(:communication_type, stub_model(CommunicationType,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new communication_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", communication_types_path, "post" do
      assert_select "input#communication_type_database_instance_id[name=?]", "communication_type[database_instance_id]"
      assert_select "input#communication_type_name[name=?]", "communication_type[name]"
      assert_select "input#communication_type_order_in_list[name=?]", "communication_type[order_in_list]"
    end
  end
end
