class ProfilesController < ApplicationController

    def index
        profile=Profile.all
        render json:profile

    end

    def show
        profile=Profile.find_by(id: params[:id])

        if profile
            render json:profile
        else
            render json:{error:"Profile not found"}, status: :not_found

        end

    end
end
