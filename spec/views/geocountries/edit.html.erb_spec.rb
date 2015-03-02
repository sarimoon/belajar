require 'spec_helper'

describe "geocountries/edit" do
  before(:each) do
    @geocountry = assign(:geocountry, stub_model(Geocountry))
  end

  it "renders the edit geocountry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geocountry_path(@geocountry), "post" do
    end
  end
end
