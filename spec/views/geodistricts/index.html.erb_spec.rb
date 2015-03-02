require 'spec_helper'

describe "geodistricts/index" do
  before(:each) do
    assign(:geodistricts, [
      stub_model(Geodistrict),
      stub_model(Geodistrict)
    ])
  end

  it "renders a list of geodistricts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
