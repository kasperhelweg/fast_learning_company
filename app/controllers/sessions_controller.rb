class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Set user login thingies
      user.increment_sign_in_count
      # Sign the user in and redirect to the user's show page.
      sign_in user
      redirect_to user
    else
      # Create an error message and re-render the signin form.
      flash.now[:error] = 'Forkert email eller password.' # Not quite right!
      render 'new'
    end   
  end
     
  def destroy
    sign_out
    redirect_to root_path
  end
end