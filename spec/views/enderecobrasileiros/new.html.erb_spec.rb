require 'spec_helper'

describe "enderecobrasileiros/new" do
  before(:each) do
    assign(:enderecobrasileiro, stub_model(Enderecobrasileiro,
      :nome_logradouro => "MyString",
      :numero => "MyString",
      :complemento => "MyString",
      :caixa_postal => "MyString",
      :bairro => "MyString",
      :cep => "MyString",
      :municipio => nil,
      :endereco => nil
    ).as_new_record)
  end

  it "renders new enderecobrasileiro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enderecobrasileiros_path, :method => "post" do
      assert_select "input#enderecobrasileiro_nome_logradouro", :name => "enderecobrasileiro[nome_logradouro]"
      assert_select "input#enderecobrasileiro_numero", :name => "enderecobrasileiro[numero]"
      assert_select "input#enderecobrasileiro_complemento", :name => "enderecobrasileiro[complemento]"
      assert_select "input#enderecobrasileiro_caixa_postal", :name => "enderecobrasileiro[caixa_postal]"
      assert_select "input#enderecobrasileiro_bairro", :name => "enderecobrasileiro[bairro]"
      assert_select "input#enderecobrasileiro_cep", :name => "enderecobrasileiro[cep]"
      assert_select "input#enderecobrasileiro_municipio", :name => "enderecobrasileiro[municipio]"
      assert_select "input#enderecobrasileiro_endereco", :name => "enderecobrasileiro[endereco]"
    end
  end
end
