class SessionsController < ApplicationController
    #user is logged in
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id # this is the moment the user is logged in.
            render json: user
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    #user is logged out
    def destroy
        session.clear
    end
end
