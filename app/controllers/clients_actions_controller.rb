class ClientsActionsController < ApplicationController
    def create
        @client = Client.find(params[:clientId])
        ClientsAction.create(client_id: params[:clientId], action_id: params[:actionId])
        render json: @client
    end

    def update
        @client_action = ClientsAction.find(params[:clientActionId])
        @client = Client.find(@client_action.client_id)
        @client_action.update(submit_date: params[:body]["submitDate"], complete_date: params[:body]["completeDate"], status: params[:body]["status"])
        render json: @client
    end
end
