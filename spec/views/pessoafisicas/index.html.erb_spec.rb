require 'spec_helper'

describe "pessoafisicas/index" do
  before(:each) do
    assign(:pessoafisicas, [
      stub_model(Pessoafisica,
        :cpf => "Cpf",
        :documento => "Documento",
        :beneficiario => nil
      ),
      stub_model(Pessoafisica,
        :cpf => "Cpf",
        :documento => "Documento",
        :beneficiario => nil
      )
    ])
  end

  it "renders a list of pessoafisicas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Documento".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
