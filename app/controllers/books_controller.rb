class BooksController < ApplicationController
 
 def new
  @book=Book.new
 end 
 
 def create
  @book=Book.new(book_params)
  @book.user_id=current_user.id
  @book.save
  redirect_to new_user_session_path
 end 
 
 def index
 end 

 private

 def book_params
  params.require(:book).permit(:book_name, :opinion)
 end

end
