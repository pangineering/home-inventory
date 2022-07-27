# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
    include Authentication
    before_action :require_login

    private

    def require_login
        unless current_user
        redirect_to login_path
        end
    end
end