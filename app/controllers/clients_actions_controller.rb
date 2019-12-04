class ClientsActionsController < ApplicationController
    def create
        @client = Client.find(params[:clientId])
        ClientsAction.create(client_id: params[:clientId], action_id: params[:actionId])
        render json: @client
    end

end
