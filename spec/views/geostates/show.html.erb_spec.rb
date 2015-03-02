require 'spec_helper'

describe "geostates/show" do
  before(:each) do
    @geostate = assign(:geostate, stub_model(Geostate))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
