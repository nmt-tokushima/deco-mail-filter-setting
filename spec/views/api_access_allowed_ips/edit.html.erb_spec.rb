require 'rails_helper'

RSpec.describe "api_access_allowed_ips/edit", type: :view do
  before(:each) do
    @api_access_allowed_ip = assign(:api_access_allowed_ip, ApiAccessAllowedIp.create!(
      :ip => "MyString"
    ))
  end

  it "renders the edit api_access_allowed_ip form" do
    render

    assert_select "form[action=?][method=?]", api_access_allowed_ip_path(@api_access_allowed_ip), "post" do

      assert_select "input[name=?]", "api_access_allowed_ip[ip]"
    end
  end
end
