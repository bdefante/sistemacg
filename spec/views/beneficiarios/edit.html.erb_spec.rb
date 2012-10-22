require 'spec_helper'

describe "beneficiarios/edit" do
  before(:each) do
    @beneficiario = assign(:beneficiario, stub_model(Beneficiario,
      :nome => "MyString",
      :contum => nil,
      :endereco => nil
    ))
  end

  it "renders the edit beneficiario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beneficiarios_path(@beneficiario), :method => "post" do
      assert_select "input#beneficiario_nome", :name => "beneficiario[nome]"
      assert_select "input#beneficiario_contum", :name => "beneficiario[contum]"
      assert_select "input#beneficiario_endereco", :name => "beneficiario[endereco]"
    end
  end
end
