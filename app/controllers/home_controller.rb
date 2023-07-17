class HomeController < ApplicationController
  def index
    @magazines = Magazine.all
    # render "home/test", locals: { magazines: @magazines }
    # binding.pry
  end

  def show
    @name = params[:name]
  end

  def erb_supply_using_inline
      # render plain: "Everything is okay."
      render html: helpers.tag.p('Not Found').html_safe, location: root_path
      # render js: "alert('Hello Rails');"
  end

  def fetch_data_from_magazine
      render json: Magazine.all, status: :ok
  end

end
