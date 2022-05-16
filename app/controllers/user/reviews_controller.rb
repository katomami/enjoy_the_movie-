class User::ReviewsController < ApplicationController
  def destroy
    @review = Review.find(params[:id])
    @movie = @review.movie
    @review.destroy
    redirect_to user_movie_path(@movie)
  end

  def update
    review = Review.find(params[:id])
    review.update(review_params)
    @movie = review.movie
    redirect_to user_movie_path(@movie)
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to user_movie_path(@review.movie)
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
