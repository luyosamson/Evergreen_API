class FlowersController < ApplicationController


    #Display all flowers in the database

    def index
        
        flower=Flower.all
        render json:flower

    end

    #Display a particular flower from the database
    def show
        flower=Flower.find_by(id:params[:id])

        if flower

         render json:flower

        else
            render json:{error:"Flower not found"}, status: :not_found
        end

    end

    #Post new product as a seller

    def create
        seller = Seller.find_by(id: params[:id])
        flower = seller.flowers.create!(flower_params)
      if flower
        render json: flower, status: :created
      else
        render json: {error:"Not authorize"}, status: 401
        end
    end


    #Delete the product as a seller
    def destroy
        flower=Flower.find_by(id:params[:id])
        if flower
            flower.destroy
            head :no_content
        else
            render json:{error:"Flower not found"}, status: :not_found
        end


    end

    #Update the price of the product

    def update
        
        flower=Flower.find_by(id: params[:id])
        if flower
            flower.update(price:params[:price])
            render json:flower
        else
            render json:{error:"Flower not found"}, status: :not_found

        end



    end


      def create
        @seller = Seller.find(session[:seller_id])
        @flower = @seller.flowers.build(flower_params)

        if @flower.save
          redirect_to @flower, notice: 'Flower was successfully created.'
        else
          render :new
        end
      end



    private

    def flower_params
        # params.permit(:product_type,:name,:price,:image,:description)
        params.require(:flower).permit(:name,:product_type,:description, :price,:image,:seller_id)
    end


  
end
