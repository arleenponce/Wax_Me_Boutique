require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :service_name => "MyString",
      :cost => 1,
      :time => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input#service_service_name[name=?]", "service[service_name]"

      assert_select "input#service_cost[name=?]", "service[cost]"

      assert_select "input#service_time[name=?]", "service[time]"

      assert_select "textarea#service_description[name=?]", "service[description]"
    end
  end
end
