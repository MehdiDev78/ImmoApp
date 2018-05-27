class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # La methode doie être effectué avant tout action de devise
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  # Cette méthode va permettre d'autoriser la variable fullname pour le module d'authentifcation Device
  # pour la connexion et l'enregistrement d'un profil
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys:[:fullname, :avatar])
  end
end
