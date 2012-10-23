require 'spec_helper'

describe "pessoajuridicas/index" do
  before(:each) do
    assign(:pessoajuridicas, [
      stub_model(Pessoajuridica,
        :cnpj => "Cnpj",
        :observacoes => "Observacoes",
        :beneficiario => nil
      ),
      stub_model(Pessoajuridica,
        :cnpj => "Cnpj",
        :observacoes => "Observacoes",
        :beneficiario => nil
      )
    ])
  end

  it "renders a list of pessoajuridicas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Observacoes".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
