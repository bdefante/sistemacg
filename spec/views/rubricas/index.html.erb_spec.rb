require 'spec_helper'

describe "rubricas/index" do
  before(:each) do
    assign(:rubricas, [
      stub_model(Rubrica,
        :valor_entrada => 1.5,
        :valor_saida => 1.5,
        :tabelageral => nil
      ),
      stub_model(Rubrica,
        :valor_entrada => 1.5,
        :valor_saida => 1.5,
        :tabelageral => nil
      )
    ])
  end

  it "renders a list of rubricas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
