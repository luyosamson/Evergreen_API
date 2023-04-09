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

    def create
        flower=Flower.create!(flower_params)

        if flower
        render json:flower, status: :created
        else
            render json:{error:"Not authorize"},status: 401
        end

    end

    def destroy
        flower=Flower.find_by(id:params[:id])
        if flower
            flower.destroy
            head :no_content
        else
            render json:{error:"Flower not found"}, status: :not_found
        end


    end

    private

    def flower_params
        # params.permit(:product_type,:name,:price,:image,:description)
        params.require(:flower).permit(:name,:product_type,:description, :price,:seller_id)
    end


  
end
