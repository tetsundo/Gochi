class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters

      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :intro, :image, :password_confirmation) }
      devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :password, :password_confirmation) }
  end
end
