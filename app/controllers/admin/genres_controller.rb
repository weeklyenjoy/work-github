class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genres = Genre.page(params[:page]).per(8)
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
       flash[:notice] = "You have created Genre successfully"
       redirect_to admin_genres_path
    else
       @genres = Genre.all
       render :index
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
       flash[:notice] = "You have update Genre successfully"
       redirect_to admin_genres_path
    else
       render :edit
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
