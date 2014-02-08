require 'spec_helper'

describe "database_instances/edit" do
  before(:each) do
    @database_instance = assign(:database_instance, stub_model(DatabaseInstance,
      :organization_id => 1,
      :database_type_id => 1
    ))
  end

  it "renders the edit database_instance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", database_instance_path(@database_instance), "post" do
      assert_select "input#database_instance_organization_id[name=?]", "database_instance[organization_id]"
      assert_select "input#database_instance_database_type_id[name=?]", "database_instance[database_type_id]"
    end
  end
end
