module ApplicationHelper
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
    
  #checks if user is logged in
  def logged_in?
    !!session[:user_id]
  end
    
      #creates before action
  def require_login
    unless logged_in?
      redirect_to root_path
    end
  end    
end
