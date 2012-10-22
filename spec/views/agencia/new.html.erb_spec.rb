require 'spec_helper'

describe "agencia/new" do
  before(:each) do
    assign(:agencium, stub_model(Agencium,
      :numero_agencia => "MyString",
      :endereco => "MyString",
      :banco => nil
    ).as_new_record)
  end

  it "renders new agencium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agencia_path, :method => "post" do
      assert_select "input#agencium_numero_agencia", :name => "agencium[numero_agencia]"
      assert_select "input#agencium_endereco", :name => "agencium[endereco]"
      assert_select "input#agencium_banco", :name => "agencium[banco]"
    end
  end
end
