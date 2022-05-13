class User::ReviewsController < ApplicationController



  def create
    @review = Review.new(review_params)
    @review.user_id=current_user.id
    @review.save

    redirect_to user_movie_path(@review.movie)
  end
  def index
    
    
    @reviews=current_user.reviews
  end





  private
  def review_params
    params.require(:review).permit(:user_id,:movie_id,:comment,:spoiler,:purpose,:star,:comment_title)
  end
end
