require 'spec_helper'

describe "enderecos/index" do
  before(:each) do
    assign(:enderecos, [
      stub_model(Endereco,
        :estrangeiro => "Estrangeiro"
      ),
      stub_model(Endereco,
        :estrangeiro => "Estrangeiro"
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estrangeiro".to_s, :count => 2
  end
end
