require 'spec_helper'

describe "tabelagerals/show" do
  before(:each) do
    @tabelageral = assign(:tabelageral, stub_model(Tabelageral,
      :valor_entrada => 1.5,
      :valor_saida => 1.5,
      :ano => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
