class ResourcesController < ApplicationController
    def index 
        #receive an array of ids, map over them
        @resources = Resource.all 
        render json: @resources
    end
end
