require 'spec_helper'

describe "enderecoestrangeiros/edit" do
  before(:each) do
    @enderecoestrangeiro = assign(:enderecoestrangeiro, stub_model(Enderecoestrangeiro,
      :identificacao_residencial => "MyString",
      :identificacao_local => "MyString",
      :identificacao_regional => "MyString",
      :pai => nil,
      :endereco => nil
    ))
  end

  it "renders the edit enderecoestrangeiro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enderecoestrangeiros_path(@enderecoestrangeiro), :method => "post" do
      assert_select "input#enderecoestrangeiro_identificacao_residencial", :name => "enderecoestrangeiro[identificacao_residencial]"
      assert_select "input#enderecoestrangeiro_identificacao_local", :name => "enderecoestrangeiro[identificacao_local]"
      assert_select "input#enderecoestrangeiro_identificacao_regional", :name => "enderecoestrangeiro[identificacao_regional]"
      assert_select "input#enderecoestrangeiro_pai", :name => "enderecoestrangeiro[pai]"
      assert_select "input#enderecoestrangeiro_endereco", :name => "enderecoestrangeiro[endereco]"
    end
  end
end
