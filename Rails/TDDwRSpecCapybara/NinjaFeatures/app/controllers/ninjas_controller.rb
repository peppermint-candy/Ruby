class NinjasController < ApplicationController

  def index
    if @errors
      flash[:error] = "Sorry, failed to submit form. Please enter the required information"
      flash[:name] = @errors[:name]
      flash[:desc] = @errors[:desc]
    end
  end

  def create

    ninja = Ninja.new(name:params[:name], description:params[:description])
    if ninja.save
      redirect_to '/success'
    else
      @errors = {}
      if params[:name] == "" or params[:name] == nil
        @errors[:name] = "Name is required"
      end

      if params[:description] == "" or params[:description] == nil
        @errors[:desc] = "Description is requried"
      end

      redirect_to '/'
    end
  end

  def success
  end

end
