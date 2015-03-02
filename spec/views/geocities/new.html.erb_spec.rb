require 'spec_helper'

describe "geocities/new" do
  before(:each) do
    assign(:geocity, stub_model(Geocity).as_new_record)
  end

  it "renders new geocity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geocities_path, "post" do
    end
  end
end
