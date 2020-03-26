class UsersController < ApplicationController

    def create
        @user = User.new(user_params);
    
        if @user.save
          render json: @user.to_json
        else
          render json: ("User creation unsuccessful").to_json
        end
    end

    def update
        user = User.find(params[:id])
        render json: user.update(user_params)
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end

    def new
        
    end


end
