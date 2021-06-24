class ListsController < ApplicationController
  
    def index
      @lists = List.all
    end
  
    def show
      @bookmark = Bookmark.new
      @review = Review.new(list: @list)
    end
  
  
    def destroy
      @list.destroy
      redirect_to lists_path
    end
  
  end