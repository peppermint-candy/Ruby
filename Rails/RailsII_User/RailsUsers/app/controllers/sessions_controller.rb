class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:Email])
    if user && user.authenticate(params[:Password])
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = [ invalid:"Invalid match" ]
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session
    redirect_to new_session_path
  end

end
