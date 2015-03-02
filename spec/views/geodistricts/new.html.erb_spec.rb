require 'spec_helper'

describe "geodistricts/new" do
  before(:each) do
    assign(:geodistrict, stub_model(Geodistrict).as_new_record)
  end

  it "renders new geodistrict form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geodistricts_path, "post" do
    end
  end
end
