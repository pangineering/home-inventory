# app/controllers/users_controller.rb
require 'securerandom'
class UsersController < ApplicationController
    skip_before_action :require_login
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to inventory_path #, notice: "Please check your email for confirmation instructions."
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def new
      @user = User.new
    end
  
    private
  
    def user_params
      user_id = SecureRandom.uuid
      params.require(:user).permit(user_id,:email, :password, :password_confirmation, :family_id)
    end
end