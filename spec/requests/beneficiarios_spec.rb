require 'spec_helper'

describe "Beneficiarios" do
  describe "GET /beneficiarios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get beneficiarios_path
      response.status.should be(200)
    end
  end
end
