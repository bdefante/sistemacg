require 'spec_helper'

describe "pessoajuridicas/new" do
  before(:each) do
    assign(:pessoajuridica, stub_model(Pessoajuridica,
      :cnpj => "MyString",
      :observacoes => "MyString",
      :beneficiario => nil
    ).as_new_record)
  end

  it "renders new pessoajuridica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pessoajuridicas_path, :method => "post" do
      assert_select "input#pessoajuridica_cnpj", :name => "pessoajuridica[cnpj]"
      assert_select "input#pessoajuridica_observacoes", :name => "pessoajuridica[observacoes]"
      assert_select "input#pessoajuridica_beneficiario", :name => "pessoajuridica[beneficiario]"
    end
  end
end
