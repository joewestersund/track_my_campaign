require 'spec_helper'

describe "contact_imports/edit" do
  before(:each) do
    @contact_import = assign(:contact_import, stub_model(ContactImport))
  end

  it "renders the edit contact_import form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_import_path(@contact_import), "post" do
    end
  end
end
