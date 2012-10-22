require 'spec_helper'

describe "enderecos/edit" do
  before(:each) do
    @endereco = assign(:endereco, stub_model(Endereco,
      :estrangeiro => "MyString"
    ))
  end

  it "renders the edit endereco form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enderecos_path(@endereco), :method => "post" do
      assert_select "input#endereco_estrangeiro", :name => "endereco[estrangeiro]"
    end
  end
end
