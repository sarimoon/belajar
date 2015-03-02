require 'spec_helper'

describe "geocities/index" do
  before(:each) do
    assign(:geocities, [
      stub_model(Geocity),
      stub_model(Geocity)
    ])
  end

  it "renders a list of geocities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
