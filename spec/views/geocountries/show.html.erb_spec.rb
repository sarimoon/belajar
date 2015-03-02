require 'spec_helper'

describe "geocountries/show" do
  before(:each) do
    @geocountry = assign(:geocountry, stub_model(Geocountry))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
