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


  def create
  @seller = Seller.new(seller_params)
  if @seller.save
    render json: @seller, status: :created
  else
    error_message = if @seller.errors[:email].include?("has already been taken")
                      "Email already exists. Please use a different email."
                    elsif @seller.errors[:store_name].include?("has already been taken")
                      "Store name already exists. Please use a different store name."
                    else
                      "There was an error creating the seller."
                    end
    render json: { error: error_message }, status: :unprocessable_entity
  end
end






  


    private

    def seller_params
        params.permit(:name,:username,:store_name,:email,:password,:password_confirmation)

    end

end
