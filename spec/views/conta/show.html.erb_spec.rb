require 'spec_helper'

describe "conta/show" do
  before(:each) do
    @contum = assign(:contum, stub_model(Contum,
      :numero_conta => "Numero Conta",
      :agencium => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero Conta/)
    rendered.should match(//)
  end
end
