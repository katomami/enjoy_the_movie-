class Admin::UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page]).per(6)
  end
  
  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.page(params[:page]).per(6)
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_movies_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :nickname, :encrypted_password)
  end
end
