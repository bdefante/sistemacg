require 'spec_helper'

describe "pais/index" do
  before(:each) do
    assign(:pais, [
      stub_model(Pai,
        :nome => "Nome",
        :nacionalidade => "Nacionalidade"
      ),
      stub_model(Pai,
        :nome => "Nome",
        :nacionalidade => "Nacionalidade"
      )
    ])
  end

  it "renders a list of pais" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Nacionalidade".to_s, :count => 2
  end
end
