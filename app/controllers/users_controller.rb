class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name],
    email: params[:email],password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "User Created Successfully"
      redirect_to '/'
    else 
      flash[:warning] = "Invalid Email or Password"
      redirect_to '/signup'
    end
  end
  private
  def user_params
    params.require(:user).permit(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password]  
    )
  end
end
