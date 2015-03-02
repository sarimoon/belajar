require 'spec_helper'

describe "raligions/new" do
  before(:each) do
    assign(:raligion, stub_model(Raligion).as_new_record)
  end

  it "renders new raligion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", raligions_path, "post" do
    end
  end
end
