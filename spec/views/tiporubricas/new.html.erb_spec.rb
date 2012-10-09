require 'spec_helper'

describe "tiporubricas/new" do
  before(:each) do
    assign(:tiporubrica, stub_model(Tiporubrica,
      :definicao => "MyString"
    ).as_new_record)
  end

  it "renders new tiporubrica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tiporubricas_path, :method => "post" do
      assert_select "input#tiporubrica_definicao", :name => "tiporubrica[definicao]"
    end
  end
end
