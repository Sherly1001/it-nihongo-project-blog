class AuthorController < ApplicationController
	before_action :configure_permitted_parameters, if: :devise_controller? #for sign-up
	before_action :authenticate_author!

	protected
	
	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  	end
end