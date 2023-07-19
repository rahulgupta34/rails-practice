class UsersController < ApplicationController
  
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    # binding.pry
    @users = User.includes(:addresses)
  end

  def new
      @user = User.new
      # @user.addresses.build
      2.times { @user.addresses.build }
  end

  def create
      @user = User.new(user_params)
      if @user.save
        redirect_to url_for([:users])
      else
        render :new, status: :unprocessable_entity
      end
  end

  def edit
  end

  def update
    
      if @user.update(user_params)
        redirect_to url_for([:users])
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
      @user.destroy
      redirect_to url_for([:users])
  end

  private 

  def set_user 
      @user = User.find_by(id: params[:id])
  end

  def user_params
      params.require(:user).permit(:name, :age, addresses_attributes: [:id, :street])
  end
end
