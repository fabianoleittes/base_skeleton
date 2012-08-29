class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @users = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to root_path, :notice => t("flash.users.create.notice")
    else
      render :new
    end
  end
end