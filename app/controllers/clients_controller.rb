class ClientsController < ApplicationController
    def index 
        @clients = Client.all 
        @clients_resources = ClientsResource.all

        render json: Client.all
    end

    def create
        @client = Client.new(
          first_name: params[:firstName],
          last_name: params[:lastName],
          alias: params[:alias],
          email: params[:email],
          cellphone: params[:cellphone],
          location: params[:location],
          income: params[:income]
        )
    
        if @client.save
          render json: { clientId: @client.id, resources: @client.resources}
        else
          render json: { 'errors': @client.errors }
        end
    end

    def update
        @client = Client.find(params[:id])
        
        render json: @client.clients_resources
    end

end
