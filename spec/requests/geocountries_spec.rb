require 'spec_helper'

describe "Geocountries" do
  describe "GET /geocountries" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get geocountries_path
      response.status.should be(200)
    end
  end
end
