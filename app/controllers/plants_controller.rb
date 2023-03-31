class PlantsController < ApplicationController
    plant=Plants.all
    render json:plant
end
