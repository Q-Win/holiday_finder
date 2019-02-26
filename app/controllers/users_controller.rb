class UsersController < ApplicationController
  def index
    session[:user_id] = nil 
    if @user = User.find_by(name: params["name"])
      session[:user_id] = @user.id
      @favorites = @user.favorites
    else
      flash[:error] = 'Incorrect user name. Pleas try again.'
      redirect_to root_path
    end
  end
end
