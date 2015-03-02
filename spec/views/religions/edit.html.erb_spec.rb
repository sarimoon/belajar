require 'spec_helper'

describe "religions/edit" do
  before(:each) do
    @religion = assign(:religion, stub_model(Religion))
  end

  it "renders the edit religion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", religion_path(@religion), "post" do
    end
  end
end
