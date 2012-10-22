require 'spec_helper'

describe "agencia/index" do
  before(:each) do
    assign(:agencia, [
      stub_model(Agencium,
        :numero_agencia => "Numero Agencia",
        :endereco => "Endereco",
        :banco => nil
      ),
      stub_model(Agencium,
        :numero_agencia => "Numero Agencia",
        :endereco => "Endereco",
        :banco => nil
      )
    ])
  end

  it "renders a list of agencia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Numero Agencia".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
