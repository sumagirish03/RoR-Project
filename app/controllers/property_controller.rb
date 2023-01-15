class PropertyController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        #render html: "Hello Index"
        render json: Property.all
    end
    def show
        v = Property.find(params[:id])
        render json: v
    end
    def create
        puts params[:propertyname]
        puts params[:city]
        puts params[:country]
        puts params[:source]
        puts params[:destination]
        v = !params[:propertyname].empty?
        if (v)
            Property.create('propertyname': params[:propertyname], 'city': params[:city], 'country': params[:country], 'source': params[:source], 'destination': params[:destination])
            render json: "Data added"
        else
            render json: "Data error"
        end
    end
    def update
        p = Property.find(params[:id].to_i)
        p.update('propertyname': params[:propertyname], 'city': params[:city], 'country': params[:country], 'source': params[:source], 'destination': params[:destination])
        render json: "data Updated"
    end
    def destroy
        p = Property.find(params[:id])
        p.destroy
        render json: "data deleted"
    end
end
