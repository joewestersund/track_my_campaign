require 'spec_helper'

describe "contact_imports/show" do
  before(:each) do
    @contact_import = assign(:contact_import, stub_model(ContactImport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
