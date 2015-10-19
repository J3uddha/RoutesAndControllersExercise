class UsersController < ApplicationController

  def index
    user = User.all
    render json: user
    # render json: { :key => "hello" }
  end

  def create
    user = User.new(params[:user].permit(:username))
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    user = User.find_by_id(params[:id])
    render json: user
  end

  def update
    user = User.find_by_id(params[:id])
    if user.update(user_params)
      render json: "Updated"
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    user = User.find_by_id(params[:id])
    if user.destroy
      render json: "Destroyed"
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
