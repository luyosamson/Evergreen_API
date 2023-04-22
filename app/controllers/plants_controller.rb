class PlantsController < ApplicationController

    def index

    plant=Plant.all
    render json:plant

    end

    def show
        plant=Plant.find_by(id: params[:id])

        if plant
            render json:plant
        else
            render json:{error:"Plant not found"},status: :not_found
        end

    end

            #Posting a new Plant product

    def create
        seller = Seller.find_by(id: session[:seller_id])
        if seller.nil?
            render json: { error: "Not authorized" }, status: :unauthorized
            return
        end

        plant = seller.plants.create!(plant_params)
        if plant
            render json: plant, status: :created
        else
            render json: { error: "Failed to create plant" }, status: :unprocessable_entity
        end
    end


    #Delete the product as a seller
    def destroy
        plant=Plant.find_by(id:params[:id])
        if plant
            plant.destroy
            head :no_content
        else
            render json:{error:"Flower not found"}, status: :not_found
        end


    end

    #Update the price of the product

    def update
        
        plant=Plant.find_by(id: params[:id])
        if plant
            plant.update(price:params[:price])
            render json:plant
        else
            render json:{error:"Plant not found"}, status: :not_found

        end



    end

    private

    def plant_params
        # params.permit(:product_type,:name,:price,:image,:description)
        params.require(:plant).permit(:name,:product_type,:description,:price,:image,:seller_id)
    end




end
