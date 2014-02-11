require 'spec_helper'

describe "status_types/new" do
  before(:each) do
    assign(:status_type, stub_model(StatusType,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ).as_new_record)
  end

  it "renders new status_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", status_types_path, "post" do
      assert_select "input#status_type_database_instance_id[name=?]", "status_type[database_instance_id]"
      assert_select "input#status_type_name[name=?]", "status_type[name]"
      assert_select "input#status_type_order_in_list[name=?]", "status_type[order_in_list]"
    end
  end
end
