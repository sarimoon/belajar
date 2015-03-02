require 'spec_helper'

describe "religions/index" do
  before(:each) do
    assign(:religions, [
      stub_model(Religion),
      stub_model(Religion)
    ])
  end

  it "renders a list of religions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
