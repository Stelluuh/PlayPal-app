class UsersController < ApplicationController
    def create
        #when a user signs up 
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id #this is the moment this user is logged in.
            render json: user
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
        
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

    private

    def user_params
        params.permit(username, password, password_confirmation)
    end
end
