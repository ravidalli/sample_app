include ApplicationHelper

def sign_in(user)
  visit signin_path
  fill_in "Email",      with: user.email
  fill_in "Password",   with: user.password
  click_button "Sign in"
  #sign in when not using capybara as well
 # cookies[:remember_token] = user.remember_token
 #above is commented out will need it again when writing tests for put
end