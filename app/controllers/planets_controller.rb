class PlanetsController < ApplicationController
    def index
        render json: planet.all
    end
end
