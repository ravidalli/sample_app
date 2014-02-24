require 'spec_helper'
#include Rails.application.routes.url_helpers

describe "LayoutLinks" do
  it "should have a home page"  do
    visit root_path # Capybara maynot be working so use rspec
    #get root_path
    response.should have_selector('title', :content => "Home")
  end

  
  it "should have a help page" do
     visit help_path
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a contact" do
    visit contact_path
    response.should have_selector('title', :content => "Contact")
  end     

end

