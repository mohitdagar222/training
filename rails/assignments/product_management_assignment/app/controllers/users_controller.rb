class UsersController < ApplicationController
  def index
    @user = User.find_by(name: params[:name], password: params[:password])
    @id = 0
    if @user != nil
      session[:user_id] = @user.id
      redirect_to "/products"
    elsif params[:name] != nil
      flash[:message] = "Invalid Username Or Password"
      render "index"
    end
  end

  def signup
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "Your Account Created Successfully"
      redirect_to "/"
    else
      render "signup", status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :password, :dob, :address, :password_confirmation, :terms_of_services)
  end
end
