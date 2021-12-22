class SessionsController < ApplicationController

    def create
        this_user = User.find_by(username: params[:username])
        session[:user_id] = this_user.id
        render json: this_user, status: :ok
    end

    def destroy
        session[:user_id] = nil
        render head: :no_content, status: :no_content
    end

end
