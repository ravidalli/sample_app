require 'spec_helper'
require 'capybara/rspec'
require 'capybara/rails'


describe "LayoutLinks" do
  it "should have a home page"  do
    visit root_path 
    expect(page).to have_title("Home");
  end

  
  it "should have a help page" do
     visit help_path
    expect(page).to have_title("Help");
  end
  
  it "should have a contact page" do
    visit contact_path
    expect(page).to have_title("Contact");
  end     
  
  it "should have a signup page" do
    visit signup_path
    expect(page).to have_title("Sign Up");
  end   
  
  it "should have right links" do
  visit root_path
  expect(page).to have_title("Home");
  click_link "Help"
  expect(page).to have_title("Help");  
  click_link "Home"
  click_link "Sign Up Now"
  expect(page).to have_title("Sign Up");  
  end  
end

