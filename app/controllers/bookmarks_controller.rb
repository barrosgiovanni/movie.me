class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :destroy]
  before_action :set_list, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
    authorize(@bookmark)
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    authorize(@bookmark)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    authorize(@bookmark)
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
