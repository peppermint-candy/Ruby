class TimesController < ApplicationController
  def main
    @date = Date.today.to_formatted_s(:long)
    @time = Time.now.strftime("%I:%M %p")
  end
end
