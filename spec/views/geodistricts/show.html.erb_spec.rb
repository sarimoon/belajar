require 'spec_helper'

describe "geodistricts/show" do
  before(:each) do
    @geodistrict = assign(:geodistrict, stub_model(Geodistrict))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
