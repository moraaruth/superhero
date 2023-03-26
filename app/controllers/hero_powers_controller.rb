class HeroPowersController < ApplicationController

    def index
        heroPower = HeroPower.all
        render json: heroPower
    end
end
