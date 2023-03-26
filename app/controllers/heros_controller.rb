class HerosController < ApplicationController

    def index
        heros = Hero.all
        render json: heros
    end


     def show
        heros = Hero.find_by(id: params[:id])
        if heros
          render json: heros
        else
          render json: { error: "Hero not found" }, status: :not_found
        end
    end

end
