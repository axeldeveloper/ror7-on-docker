# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # before_action :masquerade_user!

  def after_sign_in_path_for(resource)
    if current_user.role == true
      stored_location_for(resource) || articles_path
      # stored_location_for(resource) || admin_dashboard_path
    else
      stored_location_for(resource) || articles_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :role, :avatar])
  end
end
