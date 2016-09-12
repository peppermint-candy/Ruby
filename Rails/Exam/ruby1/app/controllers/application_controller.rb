class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:lender_id]
      Lender.find(session[:lender_id])
    elsif session[:borr_id]
      Borrower.find(session[:borr_id])
    else
      nil
    end
  end

  helper_method :current_user

  def require_login
    redirect_to root_path if session[:lender_id] && session[:borr_id] == nil
  end
  #
  # def require_correct_user
  #   user = User.find(params[:id])
  #   redirect_to current_user if current_user != user
  # end

end
