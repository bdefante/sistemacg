require 'spec_helper'

describe "rubricas/show" do
  before(:each) do
    @rubrica = assign(:rubrica, stub_model(Rubrica,
      :valor_entrada => 1.5,
      :valor_saida => 1.5,
      :tabelageral => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(//)
  end
end
