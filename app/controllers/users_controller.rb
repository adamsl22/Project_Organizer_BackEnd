class UsersController < ApplicationController

    def create
        render json: User.create(user_params)
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
