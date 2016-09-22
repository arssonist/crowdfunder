class PledgesController < ApplicationController

  before_action do
    @user = User.find(params[:user_id])
  end


  def index
  end

  def new

  end

  def create
  end

  def show
  end
end
