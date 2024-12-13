class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  default_form_builder TailwindBuilder

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "Você não está autorizado a executar esta ação."
    redirect_to(root_path)
  end

  protected

  def after_sign_in_path_for(resource)
    pages_dashboard_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:invite, keys: [:name])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^pages$)/
  end
end
