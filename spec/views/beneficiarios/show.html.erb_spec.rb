require 'spec_helper'

describe "beneficiarios/show" do
  before(:each) do
    @beneficiario = assign(:beneficiario, stub_model(Beneficiario,
      :nome => "Nome",
      :contum => nil,
      :endereco => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
