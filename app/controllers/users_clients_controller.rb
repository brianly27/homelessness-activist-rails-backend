class UsersClientsController < ApplicationController
    def show
        @users_clients = User.find(params[:id]).clients 

        render json: @users_clients
    end

end
