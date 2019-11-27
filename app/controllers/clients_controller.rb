class ClientsController < ApplicationController
    def index 
        @clients = Client.all 
        @clients_resources = ClientsResource.all

        render json: {clients: @clients, clients_resources: @clients_resources}
    end

    def update
        @client = Client.find(params[:id])
        
        render json: @client.clients_resources
    end

end
