require 'spec_helper'

describe "geostates/edit" do
  before(:each) do
    @geostate = assign(:geostate, stub_model(Geostate))
  end

  it "renders the edit geostate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geostate_path(@geostate), "post" do
    end
  end
end
