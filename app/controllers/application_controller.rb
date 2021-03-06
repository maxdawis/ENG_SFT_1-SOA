class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #def hello
  #	render text: "Hello, word!"
  #end

  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected

  def stored_location_for(resource_or_scope)
    nil
  end

  def after_sign_in_path_for(resource_or_scope)
    user_path(current_user)
  end

	def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :mat, :email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :mat, :email, :password, :current_password, :avatar) }
	end
end
