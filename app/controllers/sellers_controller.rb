class SellersController < ApplicationController

    #Display all seller

    def index
        seller=Seller.all
        render json:seller
    end

    #Display a particular seller

    def show
        seller=Seller.find_by(id: params[:id])
        if seller
            render json:seller
        else
            render json:{error:"Seller not found"}, status: :not_found
        end
    end

    # SignUp/Register Function
    def create

        seller=Seller.create(seller_params)
        session[:seller_id]=seller.id
        render json:seller, status: :created

    end
  


    private

    def seller_params
        params.permit(:name,:username,:store_name,:email,:password,:password_confirmation)

    end

end
