require 'spec_helper'

describe "pais/new" do
  before(:each) do
    assign(:pai, stub_model(Pai,
      :nome => "MyString",
      :nacionalidade => "MyString"
    ).as_new_record)
  end

  it "renders new pai form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pais_path, :method => "post" do
      assert_select "input#pai_nome", :name => "pai[nome]"
      assert_select "input#pai_nacionalidade", :name => "pai[nacionalidade]"
    end
  end
end
