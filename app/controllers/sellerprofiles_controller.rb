class SellerprofilesController < ApplicationController
    def index
        sellerprofile=Sellerprofile.all
        render json:sellerprofile
    end

    def show
        sellerprofile=Sellerprofile.find_by(id: params[:id])

        if sellerprofile
            render json:sellerprofile
        else
            render json:{error:"Profile not found"},status: :not_found
        end
    end

end
