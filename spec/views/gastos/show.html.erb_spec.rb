require 'spec_helper'

describe "gastos/show" do
  before(:each) do
    @gasto = assign(:gasto, stub_model(Gasto,
      :data => "Data",
      :valor => 1.5,
      :observacoes => "Observacoes",
      :rubrica => nil,
      :beneficiario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/1.5/)
    rendered.should match(/Observacoes/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
