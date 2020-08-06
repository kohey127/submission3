class UsersController < ApplicationController
  def index
    @Users = User.all
    @book = Book.new
  end

  def edit
    
  end

  def show

  end

  def create
    @book = Book.new(book_params) #書き方をテキストで確認
    @book.save
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
