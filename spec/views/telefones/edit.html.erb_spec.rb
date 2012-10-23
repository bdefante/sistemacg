require 'spec_helper'

describe "telefones/edit" do
  before(:each) do
    @telefone = assign(:telefone, stub_model(Telefone,
      :tipo => "MyString",
      :numero => "MyString",
      :codigo_area => "MyString",
      :ramal => "MyString",
      :beneficiario => nil
    ))
  end

  it "renders the edit telefone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => telefones_path(@telefone), :method => "post" do
      assert_select "input#telefone_tipo", :name => "telefone[tipo]"
      assert_select "input#telefone_numero", :name => "telefone[numero]"
      assert_select "input#telefone_codigo_area", :name => "telefone[codigo_area]"
      assert_select "input#telefone_ramal", :name => "telefone[ramal]"
      assert_select "input#telefone_beneficiario", :name => "telefone[beneficiario]"
    end
  end
end
