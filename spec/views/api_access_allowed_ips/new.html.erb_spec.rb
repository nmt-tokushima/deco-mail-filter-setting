require 'rails_helper'

RSpec.describe "api_access_allowed_ips/new", type: :view do
  before(:each) do
    assign(:api_access_allowed_ip, ApiAccessAllowedIp.new(
      :ip => "MyString"
    ))
  end

  it "renders new api_access_allowed_ip form" do
    render

    assert_select "form[action=?][method=?]", api_access_allowed_ips_path, "post" do

      assert_select "input[name=?]", "api_access_allowed_ip[ip]"
    end
  end
end
