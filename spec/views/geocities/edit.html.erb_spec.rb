require 'spec_helper'

describe "geocities/edit" do
  before(:each) do
    @geocity = assign(:geocity, stub_model(Geocity))
  end

  it "renders the edit geocity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geocity_path(@geocity), "post" do
    end
  end
end
