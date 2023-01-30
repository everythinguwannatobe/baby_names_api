require 'securerandom'

class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    list_id = SecureRandom.alphanumeric(12)
    @user = User.new(name: params[:name], list_id: list_id)
    if @user.save
      render json: {"msg": "Successfully Registered!"}, status: 200
    else
      render json: {"msg": "Retry to register", "list_id": list_id}, status: 400
    end
  end

  private
    def user_params
      params.permit(:name)
    end
end
