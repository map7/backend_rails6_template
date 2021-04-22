module Api
  module V1
    class HomeController < ApplicationController
      before_action :authenticate_user!
      
      def index
        render json: {message: "Welcome to the Ruby on Rails backend"}
      end
    end
  end
end
