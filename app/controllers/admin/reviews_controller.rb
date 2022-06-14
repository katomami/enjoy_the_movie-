class Admin::ReviewsController < ApplicationController
  def edit
    @review = Review.find(params[:id])
  end

  def update
    review = Review.find(params[:id])
    if review.update(review_params)
      redirect_to admin_users_path
    else
      flash[:notice] = "保存ができませんでした。全ての項目を入力し、文字数に注意してください。"
      redirect_to edit_admin_review_path(review)
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :movie_id, :comment, :spoiler, :purpose, :star, :comment_title)
  end
end
