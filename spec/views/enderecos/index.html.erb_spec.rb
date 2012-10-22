require 'spec_helper'

describe "enderecos/index" do
  before(:each) do
    assign(:enderecos, [
      stub_model(Endereco,
        :estrangeiro => false
      ),
      stub_model(Endereco,
        :estrangeiro => false
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
