class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @pagy, @movies = pagy(Movie.search_by_title_and_overview(params[:query]))
    else
      @pagy, @movies = pagy(Movie.all)
    end
  end
end
