class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper

  before_filter :update_sanitized_params, if: :devise_controller?

	def update_sanitized_params
	  devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :last_name,:agency_id, 
	  															:agency_name, :email, :current_password, :password, :password_confirmation)}
	end

  before_action :configure_devise_permitted_parameters, if: :device_controller?

  protected

  def configure_devise_permitted_parameters
  	registration_params = [:first_name, :last_name, :agency_name, :agency_id]

  end

end
