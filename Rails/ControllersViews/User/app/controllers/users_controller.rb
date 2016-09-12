class UsersController < ApplicationController
  def index
    render json: Person.all
  end

  def new
  end

  def show
    render json: Person.find(params[:id])
  end

  def create
    puts params[:name]
    Person.create(name: params[:name])
    redirect_to '/users'
  end

  def edit
    @edituser = Person.find(params[:id])
  end

  def change
    edit_user = Person.find(params[:id])
    edit_user.update(name:params[:editname])
    redirect_to '/users'
  end

  def total
    @total = Person.count
  end
end
