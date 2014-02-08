require 'spec_helper'

describe "database_types/new" do
  before(:each) do
    assign(:database_type, stub_model(DatabaseType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new database_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", database_types_path, "post" do
      assert_select "input#database_type_name[name=?]", "database_type[name]"
    end
  end
end
