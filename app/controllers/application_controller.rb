class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception, prepend: true

    before_action :config_permitted_params, if: :devise_controller?

    protected

    def config_permitted_params
        devise_parameter_sanitizer.permit(:sign_up) do |user|
            user.permit(:first_name, :last_name, :birthdate, :about, :email, :password, :password_confirmation )
        end
    end
end
