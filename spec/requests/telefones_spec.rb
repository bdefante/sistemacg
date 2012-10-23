require 'spec_helper'

describe "Telefones" do
  describe "GET /telefones" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get telefones_path
      response.status.should be(200)
    end
  end
end
