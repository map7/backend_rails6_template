class HomeController < ApplicationController
  #before_action :authenticate_user!

  respond_to :html, :json
  
  def index
    respond_to do |format|
      format.html
      format.json { render json: {message: "Welcome to the Ruby on Rails backend"} }
    end
  end
end
