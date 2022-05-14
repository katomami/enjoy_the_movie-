class User::MoviesController < ApplicationController
  before_action :set_q, only: [:index, :search]
  def index
  end
  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    @reviews = @movie.reviews
  end
  def search
    @results = @q.result
  end
  def edit
    @review = Review.find(params[:id])
  end

  private
  def search_params
    params.require(:q).permit(:department_id_eq)
  end
  def set_q
    @q = Movie.ransack(params[:q])
  end
  def movie_params
    params.require(:movie).permit(:genre_id,:title,:director_name,:production_year,:explanation)
  end
end
