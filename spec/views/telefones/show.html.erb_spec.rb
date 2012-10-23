require 'spec_helper'

describe "telefones/show" do
  before(:each) do
    @telefone = assign(:telefone, stub_model(Telefone,
      :tipo => "Tipo",
      :numero => "Numero",
      :codigo_area => "Codigo Area",
      :ramal => "Ramal",
      :beneficiario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    rendered.should match(/Numero/)
    rendered.should match(/Codigo Area/)
    rendered.should match(/Ramal/)
    rendered.should match(//)
  end
end
