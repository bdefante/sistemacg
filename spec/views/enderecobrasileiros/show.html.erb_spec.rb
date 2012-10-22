require 'spec_helper'

describe "enderecobrasileiros/show" do
  before(:each) do
    @enderecobrasileiro = assign(:enderecobrasileiro, stub_model(Enderecobrasileiro,
      :nome_logradouro => "Nome Logradouro",
      :numero => "Numero",
      :complemento => "Complemento",
      :caixa_postal => "Caixa Postal",
      :bairro => "Bairro",
      :cep => "Cep",
      :municipio => nil,
      :endereco => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome Logradouro/)
    rendered.should match(/Numero/)
    rendered.should match(/Complemento/)
    rendered.should match(/Caixa Postal/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cep/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
