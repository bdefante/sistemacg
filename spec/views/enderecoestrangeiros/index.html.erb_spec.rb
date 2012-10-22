require 'spec_helper'

describe "enderecoestrangeiros/index" do
  before(:each) do
    assign(:enderecoestrangeiros, [
      stub_model(Enderecoestrangeiro,
        :identificacao_residencial => "Identificacao Residencial",
        :identificacao_local => "Identificacao Local",
        :identificacao_regional => "Identificacao Regional",
        :pai => nil,
        :endereco => nil
      ),
      stub_model(Enderecoestrangeiro,
        :identificacao_residencial => "Identificacao Residencial",
        :identificacao_local => "Identificacao Local",
        :identificacao_regional => "Identificacao Regional",
        :pai => nil,
        :endereco => nil
      )
    ])
  end

  it "renders a list of enderecoestrangeiros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Identificacao Residencial".to_s, :count => 2
    assert_select "tr>td", :text => "Identificacao Local".to_s, :count => 2
    assert_select "tr>td", :text => "Identificacao Regional".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
