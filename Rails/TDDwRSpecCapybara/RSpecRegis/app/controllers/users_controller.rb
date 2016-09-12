class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def register
    @user = User.new(first_name:params[:First_name], last_name:params[:Last_name], email:params[:Email],password:params[:Password])
    if @user.save
      user = User.last
      redirect_to "/users/#{user.id}"
    end
  end

  def show
    @current = User.find(params[:id])
  end

end
