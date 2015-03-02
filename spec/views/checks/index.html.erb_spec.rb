require 'spec_helper'

describe "checks/index" do
  before(:each) do
    assign(:checks, [
      stub_model(Check),
      stub_model(Check)
    ])
  end

  it "renders a list of checks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
