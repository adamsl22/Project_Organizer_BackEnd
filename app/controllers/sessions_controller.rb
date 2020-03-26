class ToDosController < ApplicationController
    def new
    end

    def create     
        auth = request.env["omniauth.auth"]     
        user = User.find(|user| user.name == auth["name"]) || User.create_with_omniauth(auth)     
        session[:user_id] = user.id     
        redirect_to root_url, :notice => "Signed in!"
    end

end
