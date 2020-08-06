class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    
  end
    
  def create

  end

  def destroy

  end


end
