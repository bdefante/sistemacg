require 'spec_helper'

describe "pais/show" do
  before(:each) do
    @pai = assign(:pai, stub_model(Pai,
      :nome => "Nome",
      :nacionalidade => "Nacionalidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Nacionalidade/)
  end
end
