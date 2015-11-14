require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :service_name => "Service Name",
      :cost => 1,
      :time => 2,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Service Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
