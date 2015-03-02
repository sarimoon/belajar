require 'spec_helper'

describe "raligions/edit" do
  before(:each) do
    @raligion = assign(:raligion, stub_model(Raligion))
  end

  it "renders the edit raligion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", raligion_path(@raligion), "post" do
    end
  end
end
