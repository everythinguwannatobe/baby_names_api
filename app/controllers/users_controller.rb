require 'securerandom'

class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end
  
  # Register a new user to the database
  def create
    list_id = SecureRandom.alphanumeric(12)
    @user = User.new(name: params[:name], list_id: list_id)
    if @user.save
      render json: {"msg": "Successfully Registered!", "list_id": list_id}, status: 200
    else
      render json: {"msg": "Retry to register"}, status: 400
    end
  end

  # Sign In a current user
  def confirm


  end

  private
    def user_params
      params.permit(:name)
    end
end
