class UsersController < ApplicationController
    def show 
        @user = User.find(params[:id])
        @users_clients = @user.clients
        render json: {user: @user, clients: @users_clients}
    end

end
