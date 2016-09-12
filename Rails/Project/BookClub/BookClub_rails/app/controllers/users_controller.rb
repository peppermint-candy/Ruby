class UsersController < ApplicationController


  def create
    user = User.new(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], password:params[:password])

    if user.valid?
      user.save
      last_user = User.last
      session[:user_id] = last_user.id
      redirect_to '/main'
    else
      flash[:errors] = [user.errors]
      redirect_to :back
    end
  end

  def destroy
  end

  def signup
  end

  def all
    @friends = User.all

  end

  def show
    @me = User.find(current_user.id)
  end

end
