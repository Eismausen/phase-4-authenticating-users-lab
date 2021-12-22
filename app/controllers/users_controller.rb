class UsersController < ApplicationController

    def show
        this_user = User.find_by(id: session[:user_id])
        render json: this_user, status: :ok
    end
end
