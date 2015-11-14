require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :service_name => "Service Name",
        :cost => 1,
        :time => 2,
        :description => "MyText"
      ),
      Service.create!(
        :service_name => "Service Name",
        :cost => 1,
        :time => 2,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => "Service Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
