require 'spec_helper'

describe "agencia/show" do
  before(:each) do
    @agencium = assign(:agencium, stub_model(Agencium,
      :numero_agencia => "Numero Agencia",
      :endereco => "Endereco",
      :banco => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero Agencia/)
    rendered.should match(/Endereco/)
    rendered.should match(//)
  end
end
