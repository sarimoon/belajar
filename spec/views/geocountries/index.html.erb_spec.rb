require 'spec_helper'

describe "geocountries/index" do
  before(:each) do
    assign(:geocountries, [
      stub_model(Geocountry),
      stub_model(Geocountry)
    ])
  end

  it "renders a list of geocountries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
