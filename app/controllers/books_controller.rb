class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params['id'])
    @reviews = Review.where(book_id: @book_id)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params["title"]
    @book.author = params["author"]
    @book.genre = params["genre"]
    @book.summary = params["summary"]
    if @book.save
      redirect_to "/books", notice: "Book successfully created."
    else
      render "new"
    end
  end

  def edit
    @book = Book.find_by(id: params["id"])
  end

  def update
    @book = Book.find_by(id: params["id"])
    @book.title = params["title"]
    @book.author = params["author"]
    @book.genre = params["genre"]
    @book.photo_url = params["photo_url"]
    @book.summary = params["summary"]
    if @book.save
      redirect_to "/books/#{b.id}", notice: "Book successfully updated."
    else
      render "edit"
    end
  end

  def destroy
    book = Book.find_by(id: params["id"])
    book.delete
    redirect_to "/books", notice: "Book DESTROYED."
  end

end
