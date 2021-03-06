class BooksController < ApplicationController
 
 def new
  @book=Book.new
  if @book.user!=current_user
   redirect_to books_path
  end 
 end 
 
 def create
    @book=Book.new(book_params)
    @book.user_id=current_user.id
    if @book.save
    flash[:notice] = 'You have created book successfully.'
    redirect_to book_path(@book.id)
    else
     @books=Book.all
     @user=current_user
     render :index
    end 
 end
 
 def index
  @books=Book.all
  @book=Book.new
  @user=current_user
 end 
 
 
 def edit
  @book=Book.find(params[:id])
  if @book.user!=current_user
   redirect_to books_path
  end  
 end  
 
 def update
    @book=Book.find(params[:id])
    if @book.update(book_params)
    flash[:notice] = 'Book was successfully updated.'
    redirect_to book_path(@book.id)
    else
    @user=current_user
    render :edit
    end 
 end  
 
 def show
  @book=Book.find(params[:id])
  @user=@book.user
  @book_new=Book.new
 end 
 
 def destroy
  book=Book.find(params[:id])
  book.destroy
  redirect_to '/books'
 end  
 
 private

 def book_params
  params.require(:book).permit(:title, :body)
 end

end
