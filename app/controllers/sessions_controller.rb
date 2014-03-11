class SessionsController < ApplicationController
  def new
    @title="Sign in"
  end
  def create
    # render 'new' was used to see params
    
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
        # Sign the user in and redirect to the user's show page.
        sign_in user
        redirect_back_or user
    else
        flash.now[:error] = 'Invalid email/password combination' # Not quite right!
         @title="Sign in"
        render 'new'
    end    
  end
  def destroy
    sign_out
    redirect_to root_path
  end  
end
