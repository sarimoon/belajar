require 'spec_helper'

describe "checks/edit" do
  before(:each) do
    @check = assign(:check, stub_model(Check))
  end

  it "renders the edit check form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", check_path(@check), "post" do
    end
  end
end
