class UsersController < ApplicationController

    def index
        user=User.all
        render json:user
    end

    def create

        user=User.create(user_params)
        session[:user_id]=user.id
        render json:user, status: :created

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

     # Auto-Login Feature
    def show
        render json:@current_user

    end


def user_params
    params.require(:user).permit(:name,:username,:email,:password,:password_confirmation)

end

end
