require 'rails_helper'

RSpec.describe "transports/new", type: :view do
  before(:each) do
    assign(:transport, Transport.new(
      :domain => "MyString",
      :nexthop => "MyString",
      :port => 1
    ))
  end

  it "renders new transport form" do
    render

    assert_select "form[action=?][method=?]", transports_path, "post" do

      assert_select "input[name=?]", "transport[domain]"

      assert_select "input[name=?]", "transport[nexthop]"

      assert_select "input[name=?]", "transport[port]"
    end
  end
end
