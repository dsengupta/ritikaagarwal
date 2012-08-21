require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
     it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ritika | Home")
    end
  end
end
