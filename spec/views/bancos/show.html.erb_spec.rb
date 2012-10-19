require 'spec_helper'

describe "bancos/show" do
  before(:each) do
    @banco = assign(:banco, stub_model(Banco,
      :nome => "Nome",
      :observacoes => "Observacoes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Observacoes/)
  end
end
