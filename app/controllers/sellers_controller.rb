class SellersController < ApplicationController

    def index
        seller=Seller.all
        render json:seller
    end

    def show
        seller=Seller.find_by(id: params[:id])
        if seller
            render json:seller
        else
            render json:{error:"Seller not found"}, status: :not_found
        end
    end
end
