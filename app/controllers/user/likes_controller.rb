class User::LikesController < ApplicationController
before_action :set_movie

  def create
    @movie_like= Like.new(user_id: current_user.id, movie_id: params[:movie_id])
    @movie_like.save

  end

  def destroy
    @movie_like = Like.find_by(user_id: current_user.id, movie_id: params[:movie_id])
    @movie_like.destroy

  end

  private
  def set_movie
    @movie =Movie.find_by(id: params[:movie_id])
  end



end
