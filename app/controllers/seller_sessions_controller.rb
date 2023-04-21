class SellerSessionsController < ApplicationController


#Login method
    def create
            seller=Seller.find_by(username: params[:username])
        if seller && seller.authenticate(params[:password])
            session[:seller_id]=seller.id
            render json:seller
        else
            render json:{error:"Invalid Username or Password"}, status: :unauthorized
        end

    end

    #Logout method
    def destroy
        session.delete :seller_id
        head :no_content


    end
end
