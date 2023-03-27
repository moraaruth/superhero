class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index
        heroPower = HeroPower.all
        render json: heroPower
    end

    # POST /hero_powers
def create
    # Create a new instance of HeroPower with the parameters from the request body
    hero_power = HeroPower.new(hero_power_params)
    
    # If the new HeroPower instance is successfully saved to the database
    if hero_power.save
      # Retrieve the Hero instance associated with the new HeroPower
      hero = hero_power.hero
      # Render a JSON response with the Hero instance and its associated powers
      render json: hero.as_json(include: :powers)
    else
      # If the new HeroPower instance fails validation, render a JSON response with
      # an error message indicating the specific validation errors that were encountered
      render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  private
  
  def hero_power_params
    # Define the parameters that can be passed to the HeroPower model when creating a new instance
    params.require(:hero_power).permit(:strength, :power_id, :hero_id)
  end
  
end
