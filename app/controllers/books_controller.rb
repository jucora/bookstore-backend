class BooksController < ApplicationController
  def index
    books = Book.all
    render json: {status: 'SUCCESS', message: 'All books', data: books}, status: :ok 
  end

  def create
    book = Book.new(book_params)
    puts book
    p params
    if book.save
      render json: {status: 'SUCCESS', message: 'Book created!', data: book}, status: :ok 
    else
      render json: {status: 'ERROR', message: 'Book was not created!', data: book}, status: :unprocessable_entity 
    end
    
  end

  def destroy
    Book.find(params[:book_id]).destroy
    render json: {status: 'SUCCESS', message: 'Book removed', data: ''}, status: :ok
  end

  private 
  def book_params
    params.permit(:title, :author, :category_id, :percentage)
  end
end
