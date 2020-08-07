class FlightsController < ApplicationController

    def index
        @flights = Flight.all
    end

    def new
        @flight = Flight.new
        @flight.build_pilot 
        
    end

    def show
        @flight = Flight.find_by(params[:id])
    end

    def create
       
        @flight = Flight.create(flight_params)
        
        if @flight.save
            redirect_to @flight
        else
            @flight.build_pilot unless @flight.pilot 
            render 'new'
        end
    end

    private

    def flight_params
        # be nice to maintainers and don't write your strong parameters 
        # in one mega-line
        params.require(:flight)
              .permit(
                :flight_number, :destination, :pilot_id,
                pilot_attributes: [:name, :rank]
              )
      end

end