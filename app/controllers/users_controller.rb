class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
  end

  def edit
  end

  def create
    @user = User.new
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    @user = User.find_by(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
