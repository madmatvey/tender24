require 'spec_helper'

describe "procurements/index" do
  before(:each) do
    assign(:procurements, [
      stub_model(Procurement,
        :name => "Name",
        :details => "Details"
      ),
      stub_model(Procurement,
        :name => "Name",
        :details => "Details"
      )
    ])
  end

  it "renders a list of procurements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
