require 'spec_helper'

describe "municipios/edit" do
  before(:each) do
    @municipio = assign(:municipio, stub_model(Municipio,
      :nome => "MyString",
      :uf => nil
    ))
  end

  it "renders the edit municipio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => municipios_path(@municipio), :method => "post" do
      assert_select "input#municipio_nome", :name => "municipio[nome]"
      assert_select "input#municipio_uf", :name => "municipio[uf]"
    end
  end
end
