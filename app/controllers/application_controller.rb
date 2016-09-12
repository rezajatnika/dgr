class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Callbacks
  before_action :require_login

  # Helper method
  helper_method :current_user_session, :current_user

  # Flashes
  add_flash_types :success, :warning

  private

  def current_user_session
    @current_user_session ||= UserSession.find
  end

  def current_user
    @current_user = current_user_session && current_user_session.user
  end

  def require_login
    redirect_to new_user_session_path unless current_user
  end

  def require_logout
    redirect_to root_path if current_user
  end
end
