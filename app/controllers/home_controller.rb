class HomeController < ApplicationController
  def index
    @key = ENV['API_KEY']
  end
end
