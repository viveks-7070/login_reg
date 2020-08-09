class SessionsController < ApplicationController

  def index

  end

  def create
    user = User.find_by_email(login_params[:email])
    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      Rails.cache.delete('find_user')
      p '1111111111111111111111111111111'
      p Rails.cache.fetch('find_user') {user.id}
      p '22222222222222222222222'
      redirect_to shoe_path(user.id)
    else
      redirect_to users_path
    end
  end

  def destroy
    p 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww'
    p 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww'
    session[:user_id] = nil
    redirect_to users_path
  end

  def login_params
    params.require(:login).permit(:email, :password)
  end
end
