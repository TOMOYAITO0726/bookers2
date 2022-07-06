class UsersController < ApplicationController

 def show
  @user=User.find(paramas[:id])
  @book=@user.books
 end
 
 def edit
  @user=User.find(params[:id])
 end
 
 def index
  @users=User.all
 end 
 
 private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
