require 'spec_helper'

describe "ufs/show" do
  before(:each) do
    @uf = assign(:uf, stub_model(Uf,
      :sigla => "Sigla",
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sigla/)
    rendered.should match(/Nome/)
  end
end
