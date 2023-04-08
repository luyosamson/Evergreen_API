class UsersController < ApplicationController

    def index
        user=User.all
        render json:user
    end

    def show
        user=User.find_by(id: params[:id])
        if user
            render json:user
        else
            render json:{error:"User not found"}, status: :not_found
        end
    end
end
