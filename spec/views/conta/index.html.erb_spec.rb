require 'spec_helper'

describe "conta/index" do
  before(:each) do
    assign(:conta, [
      stub_model(Contum,
        :numero_conta => "Numero Conta",
        :agencium => nil
      ),
      stub_model(Contum,
        :numero_conta => "Numero Conta",
        :agencium => nil
      )
    ])
  end

  it "renders a list of conta" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Numero Conta".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
