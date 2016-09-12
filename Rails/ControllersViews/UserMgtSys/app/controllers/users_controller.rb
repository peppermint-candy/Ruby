class UsersController < ApplicationController
  def users
    @users = User.all
  end

  def new_user
    @user = User.new
  end

  def create
    @user = User.new(new_user_params)
    if @user.save
      redirect_to @users
    end
    redirect_to '/users'
  end

  def show
    @show_user = User.find(params[:id])
  end

  def edit
    @edit_user = User.find(params[:id])
  end

  def modify
    @modify = User.find(params[:id]).update(modify_user_params)
    redirect_to '/users'
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/users'
  end

private

  def new_user_params
    params.require(:new_user).permit(:first_name, :last_name, :email ,:password)
  end

  def modify_user_params
    params.require(:modify_user).permit(:first_name, :last_name,:email,:password)
  end
end
