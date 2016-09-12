class RpgController < ApplicationController
  def index
    session[:time] = DateTime.now.strftime("%m-%d-%Y %I:%M, %p")
    if not session[:log]
      session[:log] = []
    end
    if not session[:gold]
      session[:gold] = 0
    end
  end

  def farm
    @farm = rand(10..20)
    session[:gold] += @farm
    session[:log].unshift("Earned #{@farm} from the farm! #{session[:time]}")
    redirect_to '/'
  end

  def cave
    @cave = rand(5..10)
    session[:gold] += @cave
    session[:log].unshift("Earned #{@cave} from the cave! #{session[:time]}")
    redirect_to '/'

  end

  def house
    @house = rand(2..5)
    session[:gold] += @house
    session[:log].unshift("Earned #{@house} from the house! #{session[:time]}")
    redirect_to '/'

  end

  def casino
    @casino = rand(-50..50)
    session[:gold] += @casino
    if @casino > 0
      session[:log].unshift("Earned #{@casino} from the farm! #{session[:time]}")

    else
      session[:log].unshift("Entered a casino and lost #{@casino} from the casino! #{session[:time]}")
    end
    redirect_to '/'
  end
end
