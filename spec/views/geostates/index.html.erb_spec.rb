require 'spec_helper'

describe "geostates/index" do
  before(:each) do
    assign(:geostates, [
      stub_model(Geostate),
      stub_model(Geostate)
    ])
  end

  it "renders a list of geostates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
