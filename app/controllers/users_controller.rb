class UsersController < ApplicationController
  def create
    @user = User.create(user_params)

    if @user.save
      render json: {
        user: {
          username: @user.username
        }
      }
    else
      render json: {
        success: false
      }
    end 
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password)
  end   
end
