class HomeController < ApplicationController
  def index
  end

  def show
    @name = params[:name]
  end

  def search
      @magazine = Magazine.where(name: params[:search])
  end

  def check_box_data
      # binding.pry
  end


end
