require 'spec_helper'

describe "topics/edit" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :database_instance_id => 1,
      :name => "MyString",
      :order_in_list => 1
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", topic_path(@topic), "post" do
      assert_select "input#topic_database_instance_id[name=?]", "topic[database_instance_id]"
      assert_select "input#topic_name[name=?]", "topic[name]"
      assert_select "input#topic_order_in_list[name=?]", "topic[order_in_list]"
    end
  end
end
