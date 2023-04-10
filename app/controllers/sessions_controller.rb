class SessionsController < ApplicationController


    def create
            user=User.find_by(session_param)
            session[:user_id]=user.id

            render json:user

    end

    def delete
        session.delete :user_id
        head :no_content
    end

    private

    def session_param
        params.permit(:username,:password)



    end
end
