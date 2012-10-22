require 'spec_helper'

describe "municipios/show" do
  before(:each) do
    @municipio = assign(:municipio, stub_model(Municipio,
      :nome => "Nome",
      :uf => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(//)
  end
end
