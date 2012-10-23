require 'spec_helper'

describe "gastos/new" do
  before(:each) do
    assign(:gasto, stub_model(Gasto,
      :data => "MyString",
      :valor => 1.5,
      :observacoes => "MyString",
      :rubrica => nil,
      :beneficiario => nil
    ).as_new_record)
  end

  it "renders new gasto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gastos_path, :method => "post" do
      assert_select "input#gasto_data", :name => "gasto[data]"
      assert_select "input#gasto_valor", :name => "gasto[valor]"
      assert_select "input#gasto_observacoes", :name => "gasto[observacoes]"
      assert_select "input#gasto_rubrica", :name => "gasto[rubrica]"
      assert_select "input#gasto_beneficiario", :name => "gasto[beneficiario]"
    end
  end
end
