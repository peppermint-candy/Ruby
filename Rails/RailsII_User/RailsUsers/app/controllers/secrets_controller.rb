class SecretsController < ApplicationController

  before_action :require_login, only: [:index, :create, :destroy]

  def index
    @secrets = Secret.all
  end

  def create
    secret = Secret.new(content:params[:content], user:User.find(session[:user_id]))
    if secret.valid?
      secret.save
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = ["Oops! Something went wrong!"]
      redirect_to :back
    end
  end

  def destroy
    if current_user
      # user = User.find(session[:user_id])
      # secret = user.secrets.find(params[:id])
      # secret.destroy
      secret = Secret.find(params[:id])
      secret.destroy if secret.user == current_user
      redirect_to "/users/#{current_user.id}"
    end
  end
end
