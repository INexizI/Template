class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:realname, :username, :birthday, :email, :password, :remember_me)}
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:realname, :username, :about, :birthday, :image, :email, :password, :current_password, :remember_me)}
    end
end
