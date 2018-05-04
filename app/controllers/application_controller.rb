class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email, :intro, :image_id])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
  end
end
