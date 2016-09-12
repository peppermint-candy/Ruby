class SessionController < ApplicationController
  def new
  end

  def create
    lender = Lender.find_by_email(params[:email])
    borr = Borrower.find_by_email(params[:email])

    if lender && lender.authenticate(params[:password])
      session[:lender_id] = lender.id
      redirect_to lender_path(lender.id)
    elsif borr && borr.authenticate(params[:password])
      session[:borr_id] = borr.id
      redirect_to borrower_path(borr.id)
    else
      flash[:errors] = ["Invalid combination"]
      redirect_to :back
    end
  end

  def destroy
    session[:lender_id] = nil
    session[:borr_id] = nil
    redirect_to root_path
  end


end
