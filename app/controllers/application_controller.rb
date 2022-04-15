class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception, prepend: true

    before_action :config_permitted_params, if: :devise_controller?

    protected

    def config_permitted_params
        devise_parameter_sanitizer.permit(:sign_up) do |u|
            u.permit(:first_name, :last_name, :avatar, :gender, :birthdate, :about, :email, :password, :password_confirmation)
        end
        devise_parameter_sanitizer.permit(:account_update) do |u|
            u.permit(:first_name, :last_name, :avatar, :gender, :birthdate, :about, :email, :password, :password_confirmation, :current_password) 
        end
    end

    #Login Path (if already logged in)
    def after_sign_in_path_for(resource)
        user_profile_path(current_user.id)
    end
end
