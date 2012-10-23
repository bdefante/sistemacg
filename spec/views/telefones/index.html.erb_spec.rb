require 'spec_helper'

describe "telefones/index" do
  before(:each) do
    assign(:telefones, [
      stub_model(Telefone,
        :tipo => "Tipo",
        :numero => "Numero",
        :codigo_area => "Codigo Area",
        :ramal => "Ramal",
        :beneficiario => nil
      ),
      stub_model(Telefone,
        :tipo => "Tipo",
        :numero => "Numero",
        :codigo_area => "Codigo Area",
        :ramal => "Ramal",
        :beneficiario => nil
      )
    ])
  end

  it "renders a list of telefones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo Area".to_s, :count => 2
    assert_select "tr>td", :text => "Ramal".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
