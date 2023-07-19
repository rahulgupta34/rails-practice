class MagazinesController < ApplicationController
  
  def index
      @magazines = Magazine.all
  end

  def new
    @magazine = Magazine.new
  end

  def create
    
      @magazine = Magazine.new(magazine_params)
      if @magazine.save
        flash[:success] = "Magazine created successfully"
        redirect_to url_for([:magazines])
      else
          render :new, status: :unprocessable_entity
      end
  end

  private

  def magazine_params
    params.require(:magazine).permit(:name)
  end

end
