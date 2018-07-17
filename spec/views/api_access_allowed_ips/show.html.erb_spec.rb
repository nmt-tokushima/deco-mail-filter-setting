require 'rails_helper'

RSpec.describe "api_access_allowed_ips/show", type: :view do
  before(:each) do
    @api_access_allowed_ip = assign(:api_access_allowed_ip, ApiAccessAllowedIp.create!(
      :ip => "Ip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ip/)
  end
end
