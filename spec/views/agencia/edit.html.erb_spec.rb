require 'spec_helper'

describe "agencia/edit" do
  before(:each) do
    @agencium = assign(:agencium, stub_model(Agencium,
      :numero_agencia => "MyString",
      :endereco => "MyString",
      :banco => nil
    ))
  end

  it "renders the edit agencium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agencia_path(@agencium), :method => "post" do
      assert_select "input#agencium_numero_agencia", :name => "agencium[numero_agencia]"
      assert_select "input#agencium_endereco", :name => "agencium[endereco]"
      assert_select "input#agencium_banco", :name => "agencium[banco]"
    end
  end
end
