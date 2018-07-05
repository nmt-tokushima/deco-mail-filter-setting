require 'rails_helper'

RSpec.describe "transports/index", type: :view do
  before(:each) do
    assign(:transports, [
      Transport.create!(
        :domain => "Domain",
        :nexthop => "Nexthop",
        :port => 2
      ),
      Transport.create!(
        :domain => "Domain",
        :nexthop => "Nexthop",
        :port => 2
      )
    ])
  end

  it "renders a list of transports" do
    render
    assert_select "tr>td", :text => "Domain".to_s, :count => 2
    assert_select "tr>td", :text => "Nexthop".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
