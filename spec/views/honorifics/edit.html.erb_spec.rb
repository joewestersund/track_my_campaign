require 'spec_helper'

describe "honorifics/edit" do
  before(:each) do
    @honorific = assign(:honorific, stub_model(Honorific,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit honorific form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", honorific_path(@honorific), "post" do
      assert_select "input#honorific_database_instance_id[name=?]", "honorific[database_instance_id]"
      assert_select "input#honorific_name[name=?]", "honorific[name]"
      assert_select "input#honorific_order_in_list[name=?]", "honorific[order_in_list]"
    end
  end
end
