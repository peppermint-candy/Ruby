class UsersController < ApplicationController

  before_action :require_login, except: [:new, :create]
  before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

  def new

  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(new_user_params)
    if @user.save
      last_user = User.last
      puts "The last user information here #{last_user}"
      session[:user_id] = last_user.id
      redirect_to "/users/#{last_user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(new_user_params)
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    if current_user
      user = User.find(params[:id])
      user.destroy
      reset_session
    end
    redirect_to new_session_path
  end

  private

  def new_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
