require 'rails_helper'

RSpec.describe "transports/show", type: :view do
  before(:each) do
    @transport = assign(:transport, Transport.create!(
      :domain => "Domain",
      :nexthop => "Nexthop",
      :port => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Domain/)
    expect(rendered).to match(/Nexthop/)
    expect(rendered).to match(/2/)
  end
end
