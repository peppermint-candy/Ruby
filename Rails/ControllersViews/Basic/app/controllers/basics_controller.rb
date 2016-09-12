class BasicsController < ApplicationController
  def home

  end

  def index
    redirect_to '/hello'
  end

  def hello

  end

  def sayhello

  end

  def helloname
    puts params[:text]

  end

  def times
    if not session[:count]
      session[:count] = 0
    else
      session[:count] += 1
    end

  def restart
    reset_session
    redirect_to '/times'
  end
  end

  def new
  end
end
