require 'spec_helper'

describe "beneficiarios/index" do
  before(:each) do
    assign(:beneficiarios, [
      stub_model(Beneficiario,
        :nome => "Nome",
        :contum => nil,
        :endereco => nil
      ),
      stub_model(Beneficiario,
        :nome => "Nome",
        :contum => nil,
        :endereco => nil
      )
    ])
  end

  it "renders a list of beneficiarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
