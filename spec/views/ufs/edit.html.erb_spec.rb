require 'spec_helper'

describe "ufs/edit" do
  before(:each) do
    @uf = assign(:uf, stub_model(Uf,
      :sigla => "MyString",
      :nome => "MyString"
    ))
  end

  it "renders the edit uf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ufs_path(@uf), :method => "post" do
      assert_select "input#uf_sigla", :name => "uf[sigla]"
      assert_select "input#uf_nome", :name => "uf[nome]"
    end
  end
end
