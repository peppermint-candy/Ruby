class UserController < ApplicationController
  def index
  end

  def login
      reset_session
  end

end
