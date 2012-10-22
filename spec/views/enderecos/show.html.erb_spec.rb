require 'spec_helper'

describe "enderecos/show" do
  before(:each) do
    @endereco = assign(:endereco, stub_model(Endereco,
      :estrangeiro => "Estrangeiro"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Estrangeiro/)
  end
end
