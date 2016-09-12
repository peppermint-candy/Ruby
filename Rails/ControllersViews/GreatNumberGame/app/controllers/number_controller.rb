class NumberController < ApplicationController

  def index
    if not session[:number]
      session[:number] = rand(1..100)
      puts session[:number]
      flash[:take_guess] = ""
    else
      # session[:guess] = 20
      if not session[:guess]
        puts session[:number]
      else
        if session[:guess] > session[:number]
          flash[:too_high] = "Too High"
        elsif session[:guess] < session[:number]
          flash[:too_low] = "Too Low"
        elsif session[:guess] == session[:number]
          flash[:correct] = "#{session[:number]} was the number!"
        else
          flash[:error] = "Hmmm! Something went wrong"
          redirect_to :back
        end
      end
    end
  end

  def check
    session[:guess] = params[:guess].to_i
    redirect_to '/'
  end

  def reset
    reset_session
    redirect_to '/'
  end

end
