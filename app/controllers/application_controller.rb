class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    @current_user_lookup ||= User.find(session[:user_id]) if session[:user_id]
  end

end
