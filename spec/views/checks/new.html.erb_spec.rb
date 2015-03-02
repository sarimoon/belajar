require 'spec_helper'

describe "checks/new" do
  before(:each) do
    assign(:check, stub_model(Check).as_new_record)
  end

  it "renders new check form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checks_path, "post" do
    end
  end
end
