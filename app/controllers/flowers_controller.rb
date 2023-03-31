class FlowersController < ApplicationController

    def index
        
        flower=Flower.all
        render json:flower

    end

    def show
        flower=Flower.find_by(id:params[:id])

        if flower

         render json:flower

        else
            render json:{error:"Flower not found"}, status: :not_found
        end

    end



end
