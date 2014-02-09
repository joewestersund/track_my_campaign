require 'spec_helper'

describe "position_types/edit" do
  before(:each) do
    @position_type = assign(:position_type, stub_model(PositionType,
      :database_instance_id => "",
      :name => "",
      :order_in_list => 1
    ))
  end

  it "renders the edit position_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", position_type_path(@position_type), "post" do
      assert_select "input#position_type_database_instance_id[name=?]", "position_type[database_instance_id]"
      assert_select "input#position_type_name[name=?]", "position_type[name]"
      assert_select "input#position_type_order_in_list[name=?]", "position_type[order_in_list]"
    end
  end
end
