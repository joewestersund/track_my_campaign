require 'spec_helper'

describe "contact_imports/index" do
  before(:each) do
    assign(:contact_imports, [
      stub_model(ContactImport),
      stub_model(ContactImport)
    ])
  end

  it "renders a list of contact_imports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
