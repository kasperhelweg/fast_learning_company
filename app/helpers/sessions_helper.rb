module SessionsHelper

  def sign_in( user )
    # User is logging in    
    if !user_signed_in?      
      if params[:remember_me]
        cookies.permanent[:remember_token] = user.remember_token
        session[:remember_me] = true
      else  
        cookies[:remember_token] = user.remember_token
        session[:remember_me] = false
      end 
    # User is updating 
    else
      if !session[:remember_me]
        cookies[:remember_token] = user.remember_token
      else
        cookies.permanent[:remember_token] = user.remember_token
      end
    end
    self.current_user = user
  end
  
  def sign_out
    self.current_user = nil
    cookies.delete( :remember_token )
  end
  
  def current_user=( user )
    @current_user = user
  end
  
  def current_user
    @current_user ||= User.find_by_remember_token( cookies[:remember_token] ) if cookies[:remember_token]
  end
  
  def user_signed_in?
    !current_user.nil?
  end 
end
