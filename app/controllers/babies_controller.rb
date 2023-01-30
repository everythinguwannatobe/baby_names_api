class BabiesController < ApplicationController
  def index
    @user = User.find_by(list_id: params[:list_id])
    @babies =  @user.babies.all
    render json: @babies
  end

  def create
    @user = User.find_by(list_id: params[:list_id])
    @baby = Baby.where(baby_params, user_id: @user.id)
    if @baby.present?
      render json: {"msg": "Names must be specific, not be duplicated!"}, status: 400
    else
      @new_baby = @user.babies.create(baby_params)
      render json: @new_baby, status: 200
    end
  end

  def update
  end

  def delete
  end

  private
    def baby_params
      params.permit(:name)
    end
end
