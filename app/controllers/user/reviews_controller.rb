class User::ReviewsController < ApplicationController
  def new
  end
  def index
  end
  def history
  end
  def create
  end
  def show
  end
  def update
  end
  def edit
  end
  def review_params
    params.require(:review).permit(:user_id,:movie_id,:comment,:spoiler,:purpose,:star,:comment_title)
  end
end
