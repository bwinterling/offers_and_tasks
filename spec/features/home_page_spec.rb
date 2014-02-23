require 'spec_helper'

describe "home page" do
  it "displays offers on the home page" do
    visit "/"
    within "#offers" do
      expect(page).to have_css('li.offer')
    end
  end
end
