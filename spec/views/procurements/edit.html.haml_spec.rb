require 'spec_helper'

describe "procurements/edit" do
  before(:each) do
    @procurement = assign(:procurement, stub_model(Procurement,
      :name => "MyString",
      :details => "MyString"
    ))
  end

  it "renders the edit procurement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", procurement_path(@procurement), "post" do
      assert_select "input#procurement_name[name=?]", "procurement[name]"
      assert_select "input#procurement_details[name=?]", "procurement[details]"
    end
  end
end
