class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @new_book = Book.new
  end
    
  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to users_path
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = 'You have updated book successfully.'
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def create
    @books = Book.all
    @book = Book.new(book_params) #書き方をテキストで確認
    @book.user_id = current_user.id 
    if @book.save
      flash[:notice] = 'You have creatad book successfully.'
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
