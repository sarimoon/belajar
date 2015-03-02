require 'spec_helper'

describe "raligions/index" do
  before(:each) do
    assign(:raligions, [
      stub_model(Raligion),
      stub_model(Raligion)
    ])
  end

  it "renders a list of raligions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
