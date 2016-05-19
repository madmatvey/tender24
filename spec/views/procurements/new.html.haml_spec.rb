require 'spec_helper'

describe "procurements/new" do
  before(:each) do
    assign(:procurement, stub_model(Procurement,
      :name => "MyString",
      :details => "MyString"
    ).as_new_record)
  end

  it "renders new procurement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", procurements_path, "post" do
      assert_select "input#procurement_name[name=?]", "procurement[name]"
      assert_select "input#procurement_details[name=?]", "procurement[details]"
    end
  end
end
