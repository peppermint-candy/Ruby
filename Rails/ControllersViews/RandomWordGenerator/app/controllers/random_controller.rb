class RandomController < ApplicationController
  def index
    session[:random_string] = SecureRandom.hex
  end

  def update
    if not session[:count]
      session[:count] = 0
    end
    session[:count] += 1
    redirect_to '/'
  end
end
