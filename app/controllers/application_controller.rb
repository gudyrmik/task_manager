class ApplicationController < ActionController::Base

  include Pagy::Backend

  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def default_url_options
    { lang: I18n.locale }
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:firstname, :lastname, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:firstname, :lastname, :password, :current_password)}
  end

  private

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

end
