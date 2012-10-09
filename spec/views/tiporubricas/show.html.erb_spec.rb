require 'spec_helper'

describe "tiporubricas/show" do
  before(:each) do
    @tiporubrica = assign(:tiporubrica, stub_model(Tiporubrica,
      :definicao => "Definicao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Definicao/)
  end
end
