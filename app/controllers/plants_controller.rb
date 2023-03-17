class PlantsController < ApplicationController
    # wrap parameters format: []
    def index 
        plants= Plant.all
        render json: plants
    end 

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end 

    def create
        plant = Plant.create(params.permit(:name, :image, :price))
        render json: plant, status: :created
    end 

    # private
    # def plant_params
    #     params.permit(:name, :image, :price)
    # end 
end
