require 'spec_helper'

describe "geocities/show" do
  before(:each) do
    @geocity = assign(:geocity, stub_model(Geocity))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
