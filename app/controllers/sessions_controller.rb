class SessionsController < ApplicationController
  def new

  end

  def create
  	@user = User.where(email: params[:email]).first
  	if @user && @user.password == params[:password]
  		flash[:notice] = "You've been signed in successfully"
  		session[:user_id] = @user.id
  		redirect_to user_path(@user)
  	else
  		flash[:alert] = "There was a problem signing you in"
  		redirect_to :back
  	end
  end

  def destroy
  	session[:user_id] = nil
  	flash[:notice] = "You've been logged out successfully"
  	redirect_to login_path
  	
  end
end
