class User::UsersController < ApplicationController
  before_action :set_user, :only => [:show, :destroy]
  def show
    @user = current_user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def comfirmation
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to user_user_path
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :encrypted_password)
  end

  private

  def set_user
    @user = User.find_by(:id => params[:id])
  end
end
