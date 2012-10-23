require 'spec_helper'

describe "pessoajuridicas/show" do
  before(:each) do
    @pessoajuridica = assign(:pessoajuridica, stub_model(Pessoajuridica,
      :cnpj => "Cnpj",
      :observacoes => "Observacoes",
      :beneficiario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cnpj/)
    rendered.should match(/Observacoes/)
    rendered.should match(//)
  end
end
