class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) #Va récupérer les informations de l'user par son id
  end
end