require 'spec_helper'

describe "tiporubricas/edit" do
  before(:each) do
    @tiporubrica = assign(:tiporubrica, stub_model(Tiporubrica,
      :definicao => "MyString"
    ))
  end

  it "renders the edit tiporubrica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tiporubricas_path(@tiporubrica), :method => "post" do
      assert_select "input#tiporubrica_definicao", :name => "tiporubrica[definicao]"
    end
  end
end
