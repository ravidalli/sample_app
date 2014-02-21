require 'spec_helper'

describe "LayoutLinks" do
  it "should have a home page"  do
    get '/'
    response.should have_selector('title', :key => "Home")
  end
  it "should have a help page" do
    get '/help'
    response.should have_selector('title', :key => "Help")
  end
  it "should have a contact" do
    get '/contact'
    response.should have_selector('title', :key => "Contact")
  end     
  
end

