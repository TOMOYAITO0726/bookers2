class UsersController < ApplicationController

 def show
  @user=User.find(paramas[:id])
  @book=@user.books
 end
 
 def edit
  @user=User.find(params[:id])
 end
 
 
end
