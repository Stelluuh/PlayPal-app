class UsersController < ApplicationController
    def create
        #when a user signs up 
    end

    def show
        #Get current user
        # binding.pry
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else 
            render json: { error: "Not Authorized" }, status: :unauthorized
        end
    end
end
