require 'spec_helper'

describe "pessoafisicas/show" do
  before(:each) do
    @pessoafisica = assign(:pessoafisica, stub_model(Pessoafisica,
      :cpf => "Cpf",
      :documento => "Documento",
      :beneficiario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpf/)
    rendered.should match(/Documento/)
    rendered.should match(//)
  end
end
