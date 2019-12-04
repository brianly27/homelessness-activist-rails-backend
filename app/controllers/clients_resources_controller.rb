class ClientsResourcesController < ApplicationController
    ClientsResource.create(client_id: @client.id, resource_id: 1)
  def create
    @client = Client.find(params[:id])
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
