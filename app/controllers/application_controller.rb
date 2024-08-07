class ApplicationController < ActionController::Base
  default_form_builder TailwindBuilder
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  helper_method :render_sidebar?

  protected

  def after_sign_in_path_for(resource)
    pages_dashboard_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def render_sidebar?
    !(devise_controller? || (controller_name == "pages" && action_name == "home") || request.path == root_path)
  end
end
