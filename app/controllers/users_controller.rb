class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create(user_params)
    @user = User.new

    if @user.save
  # flahes need to  ne added in the layout too
      redirect_to root_url
      notice: "Account succesfully created"
    else
      notice: "Account not created"
      render :new
    end

  end

  def show
  end
end
def user_params
    params.require(:user).permit(:name, :email)
  end
end
