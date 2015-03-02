require 'spec_helper'

describe "geodistricts/edit" do
  before(:each) do
    @geodistrict = assign(:geodistrict, stub_model(Geodistrict))
  end

  it "renders the edit geodistrict form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", geodistrict_path(@geodistrict), "post" do
    end
  end
end
