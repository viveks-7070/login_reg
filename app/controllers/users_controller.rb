class UsersController < ApplicationController

  def index

  end

  def create
    user = User.new(user_params)
    if user.save
       p '111111111111111111111111111111111'
      session[:user_id] = user.id
      redirect_to '/'
    else
      p '222222222222222222222222222222222'
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
