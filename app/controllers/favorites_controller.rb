class FavoritesController < ApplicationController
  def create
    current_user.favorites.create(name: params[:name], date: params[:date])

    redirect_to root_path
  end
end
