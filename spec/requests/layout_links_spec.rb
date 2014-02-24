require 'spec_helper'
require 'capybara/rspec'
require 'capybara/rails'


describe "LayoutLinks" do
  it "should have a home page"  do
    visit root_path # Capybara maynot be working so use rspec
    #get root_path
    #response.should have_selector('title', :content => "Home")
    expect(page).to have_title("Home");
  end

  
  it "should have a help page" do
     visit help_path
    expect(page).to have_title("Help");
  end
  
  it "should have a contact" do
    visit contact_path
    expect(page).to have_title("Contact");
  end     

end

