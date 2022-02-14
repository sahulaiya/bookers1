class BooksController < ApplicationController
  def index
     @books = Book.all
     @book = Book.new
  end

  def show
    @book=Book.find(params[:id])
    
    
  end

  def new
    @book = list.new
  end
 

  def edit
    @book =Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    
    flash[:alert] = "Book was successfully updated."
    redirect_to book_path(@book)
    else
     render :edit
    end
  end
  
   def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
    
   end
   
     def create
     @book = Book.new(book_params)
     if @book.save
      flash[:alert] = "Book was successfully created."
      redirect_to book_path(@book)
    else
    @books = Book.all
      render :index
  end
     end
     
   
  private
  
  def book_params
   params.require(:book).permit(:title, :body)
  end
  
end 