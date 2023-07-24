class HomeController < ApplicationController
  def index
    # binding.pry
   @cook_value =  cookies[:commenter_name]
  end

  def show
    @name = params[:name]
  end

end
