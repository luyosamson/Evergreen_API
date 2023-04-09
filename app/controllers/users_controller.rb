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
            render json:{error:"User Not found"},status: :not_found
        end
    end
    
    #Staying Logged In

    def showme
        user=User.find_by(id: session[:user_id])
        if user
            render json:user
        else
            render json:{error:"Not Authorized"}, status: :unauthorized
        end
    end
end
