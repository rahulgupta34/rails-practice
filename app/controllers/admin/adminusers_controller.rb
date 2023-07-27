class Admin::AdminusersController < ApplicationController

    def index
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])   
    end

    def update
        
        @user = User.find(params[:id])
        if @user.update(users_params)
            redirect_to url_for([:admin,:adminusers]), notice: "Role Has been updated successfully"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private 

    def users_params
        params.require(:user).permit(role_ids: [])
    end
    
end
