class BorrowersController < ApplicationController
  def index
  end

  def create
    borr = Borrower.new(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], password:params[:password], need:params[:need], description:params[:desc], amount:params[:amount])

    if borr.valid?
      borr.save
      last_borr = Borrower.last
      session[:borr_id] = last_borr.id
      redirect_to borrower_path(last_borr.id)
    else
      flash[:errors] = ["ooops! something went wrong"]
      redirect_to :back
    end
  end

  def destroy
  end

  def new
  end

  def show
    @borr = Borrower.find(params[:id])
    @lenders = Debt.where(borrower:@borr)

  end
end
