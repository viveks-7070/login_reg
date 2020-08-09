class ShoesController < ApplicationController

  def show
    authorised_user(session[:user_id], params[:id].to_i)
  end
end
