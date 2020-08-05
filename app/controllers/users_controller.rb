class UsersController < ApplicationController
  def index
    @Users = User.all
    @book = Book.new
  end

  def edit

  end

  def show

  end

  def update
    
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
