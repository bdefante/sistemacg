require 'spec_helper'

describe "municipios/index" do
  before(:each) do
    assign(:municipios, [
      stub_model(Municipio,
        :nome => "Nome",
        :uf => nil
      ),
      stub_model(Municipio,
        :nome => "Nome",
        :uf => nil
      )
    ])
  end

  it "renders a list of municipios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
