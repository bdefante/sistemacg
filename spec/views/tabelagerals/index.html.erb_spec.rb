require 'spec_helper'

describe "tabelagerals/index" do
  before(:each) do
    assign(:tabelagerals, [
      stub_model(Tabelageral,
        :valor_entrada => 1.5,
        :valor_saida => 1.5,
        :ano => 1
      ),
      stub_model(Tabelageral,
        :valor_entrada => 1.5,
        :valor_saida => 1.5,
        :ano => 1
      )
    ])
  end

  it "renders a list of tabelagerals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
