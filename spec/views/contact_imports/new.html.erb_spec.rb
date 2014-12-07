require 'spec_helper'

describe "contact_imports/new" do
  before(:each) do
    assign(:contact_import, stub_model(ContactImport).as_new_record)
  end

  it "renders new contact_import form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_imports_path, "post" do
    end
  end
end
