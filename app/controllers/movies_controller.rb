class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @movies = Movie.search_by_title_and_overview(params[:query])
    else
      @movies = Movie.all
    end
  end
end
