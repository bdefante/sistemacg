require 'spec_helper'

describe "enderecobrasileiros/index" do
  before(:each) do
    assign(:enderecobrasileiros, [
      stub_model(Enderecobrasileiro,
        :nome_logradouro => "Nome Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :caixa_postal => "Caixa Postal",
        :bairro => "Bairro",
        :cep => "Cep",
        :municipio => nil,
        :endereco => nil
      ),
      stub_model(Enderecobrasileiro,
        :nome_logradouro => "Nome Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :caixa_postal => "Caixa Postal",
        :bairro => "Bairro",
        :cep => "Cep",
        :municipio => nil,
        :endereco => nil
      )
    ])
  end

  it "renders a list of enderecobrasileiros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome Logradouro".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Caixa Postal".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
