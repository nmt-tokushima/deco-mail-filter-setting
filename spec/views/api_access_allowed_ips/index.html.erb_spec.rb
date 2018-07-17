require 'rails_helper'

RSpec.describe "api_access_allowed_ips/index", type: :view do
  before(:each) do
    assign(:api_access_allowed_ips, [
      ApiAccessAllowedIp.create!(
        :ip => "Ip"
      ),
      ApiAccessAllowedIp.create!(
        :ip => "Ip"
      )
    ])
  end

  it "renders a list of api_access_allowed_ips" do
    render
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
  end
end
