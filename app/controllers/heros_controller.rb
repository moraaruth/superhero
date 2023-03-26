class HerosController < ApplicationController

    def index
        heros = Hero.all
        render json: heros
    end


    def show
        heros = Hero.find(params[:id])
        render json: heros
     end



end
