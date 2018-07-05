require 'rails_helper'

RSpec.describe "transports/edit", type: :view do
  before(:each) do
    @transport = assign(:transport, Transport.create!(
      :domain => "MyString",
      :nexthop => "MyString",
      :port => 1
    ))
  end

  it "renders the edit transport form" do
    render

    assert_select "form[action=?][method=?]", transport_path(@transport), "post" do

      assert_select "input[name=?]", "transport[domain]"

      assert_select "input[name=?]", "transport[nexthop]"

      assert_select "input[name=?]", "transport[port]"
    end
  end
end
