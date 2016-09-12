class LikesController < ApplicationController

  before_action :require_login
  before_action :require_correct_user

  def create
    like = Like.new
    like.user = User.find(current_user.id)
    like.secret = Secret.find(params[:secret_id])
    if like.valid?
      like.save
    end
    redirect_to "/secrets"
  end

  def destroy
    like = Like.where(user:User.find(current_user.id), secret:Secret.find(params[:id])).ids
    l = like
    if like
      Like.find(l.first).destroy
    end
    redirect_to "/secrets"
  end
end
