require 'spec_helper'

describe "enderecoestrangeiros/show" do
  before(:each) do
    @enderecoestrangeiro = assign(:enderecoestrangeiro, stub_model(Enderecoestrangeiro,
      :identificacao_residencial => "Identificacao Residencial",
      :identificacao_local => "Identificacao Local",
      :identificacao_regional => "Identificacao Regional",
      :pai => nil,
      :endereco => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Identificacao Residencial/)
    rendered.should match(/Identificacao Local/)
    rendered.should match(/Identificacao Regional/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
