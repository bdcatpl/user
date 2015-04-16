class ApplicationController < ActionController::Base
<<<<<<< HEAD
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
=======
<<<<<<< HEAD
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
=======
 protect_from_forgery

  private

  def current_owner
    #@current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    @current_owner ||= Owner.where("auth_token =?", cookies[:auth_token]).first if cookies[:auth_token]
  end
  helper_method :current_owner
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
end
