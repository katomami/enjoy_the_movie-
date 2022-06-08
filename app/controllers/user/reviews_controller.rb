class User::ReviewsController < ApplicationController
  def destroy
    @review = Review.find(params[:id])
    @movie = @review.movie
    @review.destroy
    redirect_to user_movie_path(@movie)
  end

  def update
    review = Review.find(params[:id])
    @movie = review.movie
    if review.update(review_params)
      redirect_to user_movie_path(@movie)
    else
      flash[:notice] = "レビューの保存ができませんでした。全ての項目を入力し、文字数に注意してください。"
      redirect_to edit_user_movie_path(review)
    end
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to user_movie_path(@review.movie)
    else
      flash[:notice] = "レビューの保存ができませんでした。全ての項目を入力し、文字数に注意してください。"
      redirect_to user_movie_path(@review.movie)
    end
  end

  def index
    @reviews = current_user.reviews.page(params[:page]).per(6)
  end

  def show
    @review = Review.find(params[:id])
    @movie = @review.movie
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :movie_id, :comment, :spoiler, :purpose, :star, :comment_title)
  end
end
