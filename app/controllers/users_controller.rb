class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
  # flahes need to  ne added in the layout too
      redirect_to root_url
      # notice: "Account succesfully created"
    else
      # notice: "Account not created"
      render :new
    end

  end

  def show
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
