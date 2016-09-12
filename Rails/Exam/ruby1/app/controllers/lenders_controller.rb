class LendersController < ApplicationController
  def index
  end

  def create

    lender = Lender.new(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], password:params[:password], money:params[:money])

    if lender.valid?
      lender.save
      last_lender = Lender.last
      session[:lender_id] = last_lender.id
      redirect_to lender_path(last_lender.id)
    else
      flash[:errors] = [lender.errors.full_messages]
      redirect_to :back
    end
  end

  def destroy
  end

  def new
  end

  def show
    @lender = Lender.find(params[:id])
    @borrowers = Debt.where.not(lender: @lender)
    @debts = Debt.where(lender:@lender)

  end
end
