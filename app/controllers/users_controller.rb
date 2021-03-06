class UsersController < ApplicationController

	before_filter :authorize!, except: [:new, :create]


  def new
  	@user = User.new
  end


  def create
  	@user = User.new(user_params)
  	if @user.save
  	   flash[:notice] = "Welcome #{@user.fname}"
  	   redirect_to user_path(@user)
  	else
  		flash[:notice] = "There was a problem signing you in"
  		render "users/new"
  	end
  	
  end



  def show
  	@user = User.find(params[:id])
  	
  end





  private

  def user_params
  	params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  	
  end

def user_params
  params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  
end




end
