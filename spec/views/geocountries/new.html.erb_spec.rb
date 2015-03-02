require 'spec_helper'

describe "geocountries/new" do
  before(:each) do
    assign(:geocountry, stub_model(Geocountry).as_new_record)
  end

  it "renders new geocountry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geocountries_path, "post" do
    end
  end
end
