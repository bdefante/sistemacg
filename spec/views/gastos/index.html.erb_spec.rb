require 'spec_helper'

describe "gastos/index" do
  before(:each) do
    assign(:gastos, [
      stub_model(Gasto,
        :data => "Data",
        :valor => 1.5,
        :observacoes => "Observacoes",
        :rubrica => nil,
        :beneficiario => nil
      ),
      stub_model(Gasto,
        :data => "Data",
        :valor => 1.5,
        :observacoes => "Observacoes",
        :rubrica => nil,
        :beneficiario => nil
      )
    ])
  end

  it "renders a list of gastos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Observacoes".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
