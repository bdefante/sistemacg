require 'spec_helper'

describe "pessoafisicas/edit" do
  before(:each) do
    @pessoafisica = assign(:pessoafisica, stub_model(Pessoafisica,
      :cpf => "MyString",
      :documento => "MyString",
      :beneficiario => nil
    ))
  end

  it "renders the edit pessoafisica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pessoafisicas_path(@pessoafisica), :method => "post" do
      assert_select "input#pessoafisica_cpf", :name => "pessoafisica[cpf]"
      assert_select "input#pessoafisica_documento", :name => "pessoafisica[documento]"
      assert_select "input#pessoafisica_beneficiario", :name => "pessoafisica[beneficiario]"
    end
  end
end
