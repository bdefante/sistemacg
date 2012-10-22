require 'spec_helper'

describe "rubricas/new" do
  before(:each) do
    assign(:rubrica, stub_model(Rubrica,
      :valor_entrada => 1.5,
      :valor_saida => 1.5,
      :tabelageral => nil
    ).as_new_record)
  end

  it "renders new rubrica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rubricas_path, :method => "post" do
      assert_select "input#rubrica_valor_entrada", :name => "rubrica[valor_entrada]"
      assert_select "input#rubrica_valor_saida", :name => "rubrica[valor_saida]"
      assert_select "input#rubrica_tabelageral", :name => "rubrica[tabelageral]"
    end
  end
end
