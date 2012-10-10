require 'spec_helper'

describe "tabelagerals/new" do
  before(:each) do
    assign(:tabelageral, stub_model(Tabelageral,
      :valor_entrada => 1.5,
      :valor_saida => 1.5,
      :ano => 1
    ).as_new_record)
  end

  it "renders new tabelageral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tabelagerals_path, :method => "post" do
      assert_select "input#tabelageral_valor_entrada", :name => "tabelageral[valor_entrada]"
      assert_select "input#tabelageral_valor_saida", :name => "tabelageral[valor_saida]"
      assert_select "input#tabelageral_ano", :name => "tabelageral[ano]"
    end
  end
end
