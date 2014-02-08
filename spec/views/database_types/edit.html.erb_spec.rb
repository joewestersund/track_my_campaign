require 'spec_helper'

describe "database_types/edit" do
  before(:each) do
    @database_type = assign(:database_type, stub_model(DatabaseType,
      :name => "MyString"
    ))
  end

  it "renders the edit database_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", database_type_path(@database_type), "post" do
      assert_select "input#database_type_name[name=?]", "database_type[name]"
    end
  end
end
