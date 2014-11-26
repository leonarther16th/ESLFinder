class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper
  

  before_filter :update_sanitized_params, if: :devise_controller?
  before_filter :set_cache_headers
  before_action :configure_devise_permitted_parameters if :device_controller?
  before_action :authenticate_user!


	def update_sanitized_params
	  devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :last_name,:agency_id, 
	  															:agency_name, :email, :current_password, :password, :password_confirmation)}
	end

  def set_cache_headers
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

  protected

  def configure_devise_permitted_parameters
  	registration_params = [:first_name, :last_name, :agency_name, :agency_id]

  end

end
