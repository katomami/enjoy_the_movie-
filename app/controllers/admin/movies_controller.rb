class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all.page(params[:page]).per(6)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to admin_movies_path
    else
      flash[:notice] = "保存ができませんでした。全ての項目を入力し、文字数に注意してください。"
      redirect_to admin_movies_path
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    if movie.update(movie_params)
      redirect_to admin_movies_path
    else
      flash[:notice] = "保存ができませんでした。全ての項目を入力してください。"
      redirect_to edit_admin_movie_path(movie)
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:genre_id, :title, :director_name, :production_year, :explanation)
  end
end
