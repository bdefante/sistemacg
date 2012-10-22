require 'spec_helper'

describe "beneficiarios/new" do
  before(:each) do
    assign(:beneficiario, stub_model(Beneficiario,
      :nome => "MyString",
      :contum => nil,
      :endereco => nil
    ).as_new_record)
  end

  it "renders new beneficiario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beneficiarios_path, :method => "post" do
      assert_select "input#beneficiario_nome", :name => "beneficiario[nome]"
      assert_select "input#beneficiario_contum", :name => "beneficiario[contum]"
      assert_select "input#beneficiario_endereco", :name => "beneficiario[endereco]"
    end
  end
end
