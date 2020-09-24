class BooksController < ApplicationController
  def index
    @books = Book.all
    @book =Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new

  end

  def create

    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
      # flash[:notice]
      redirect_to book_path(@book.id), notice:'Book was successfully created.'
    else
     
      render :index
    end
  end

  def edit
    @book= Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    # flash[:notice]
      redirect_to book_path(@book.id), notice:'Book was successfully update.'
    else
     
      render:edit
    end
  end
  def destroy
     book = Book.find(params[:id])
     book.destroy
      # flash[:notice]
     redirect_to books_path, notice:'Book was successfully destroyed.'
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
    # require(:book).
  end
end

