class OrdersController < ApplicationController

    def index
        order=Order.all
        render json:order

    end

    def show
        order=Order.find_by(id: params[:id])

        if order
            render json:order
        else
            render json:{error:"Orders not found"}, status: :not_found

        end

    end
end
