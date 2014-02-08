require 'spec_helper'

describe "database_instances/new" do
  before(:each) do
    assign(:database_instance, stub_model(DatabaseInstance,
      :organization_id => 1,
      :database_type_id => 1
    ).as_new_record)
  end

  it "renders new database_instance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", database_instances_path, "post" do
      assert_select "input#database_instance_organization_id[name=?]", "database_instance[organization_id]"
      assert_select "input#database_instance_database_type_id[name=?]", "database_instance[database_type_id]"
    end
  end
end
