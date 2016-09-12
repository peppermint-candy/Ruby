class DebtsController < ApplicationController
  def create
    lender = Lender.find(session[:lender_id])
    borr = Borrower.find(params[:borr_id])

    if lender.money > params[:lend_amt].to_i
      d = Debt.new(lender:lender, borrower:borr, amount:params[:lend_amt])
    else
      flash[:errors] = ["Insufficient funds"]
      redirect_to lender_path(session[:lender_id])
    end

    if d.valid?
      d.save
      lender.money -= d.amount
      lender.update_attribute(:money , lender.money)
    else
      flash[:errors]= ["oops something went wrong"]
    end
    redirect_to lender_path(session[:lender_id])
  end
end
