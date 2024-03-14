class FlightsController < ApplicationController
    before_action :validate_params, only: :index

    def index
        render :json => flights
    end

    private
    
    def flights
        FlightDetail.where(travel_date: Date.parse(params[:travel_date]), source_city: params[:source], destination_city: params[:destination])
    end


    def validate_params
      return if params.values_at(:source, :destination, :travel_date).all?(&:present?)

      render json: { errors: 'Params are missing' }, status: 422
    end
end
