require 'spec_helper'

describe "raligions/show" do
  before(:each) do
    @raligion = assign(:raligion, stub_model(Raligion))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
