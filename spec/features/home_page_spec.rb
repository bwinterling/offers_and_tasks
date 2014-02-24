require 'spec_helper'

describe "home page" do
  it "displays offers on the home page" do
    FactoryGirl.create_list(:offer, 10)

    visit "/"
    expect(page).to have_css('#offers')
    #would need to use selenium or similar to test javascript content
  end
end
