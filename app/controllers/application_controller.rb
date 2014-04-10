class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize!
  	if !current_user
  		flash[:notice] = "Please sign in to access your account"
  		redirect_to login_path
  	end
  end



end
