require 'spec_helper'

describe "tiporubricas/index" do
  before(:each) do
    assign(:tiporubricas, [
      stub_model(Tiporubrica,
        :definicao => "Definicao"
      ),
      stub_model(Tiporubrica,
        :definicao => "Definicao"
      )
    ])
  end

  it "renders a list of tiporubricas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Definicao".to_s, :count => 2
  end
end
