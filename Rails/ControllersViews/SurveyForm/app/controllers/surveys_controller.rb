class SurveysController < ApplicationController
  def index

  end

  def create
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    redirect_to '/surveys/result'
  end

  def result

    if not session[:count]
      session[:count] = 0
    else
      session[:count] += 1
    end
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now"
  end

  def destroy
    session[:name] = nil
    session[:location] = nil
    session[:language] = nil
    session[:comment] = nil
    redirect_to '/'

  end

end
