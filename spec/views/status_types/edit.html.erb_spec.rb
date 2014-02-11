require 'spec_helper'

describe "status_types/edit" do
  before(:each) do
    @status_type = assign(:status_type, stub_model(StatusType,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit status_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", status_type_path(@status_type), "post" do
      assert_select "input#status_type_database_instance_id[name=?]", "status_type[database_instance_id]"
      assert_select "input#status_type_name[name=?]", "status_type[name]"
      assert_select "input#status_type_order_in_list[name=?]", "status_type[order_in_list]"
    end
  end
end
