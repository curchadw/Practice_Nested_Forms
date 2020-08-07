class PassengersController < ApplicationController

    def index
        @passengers = Passenger.all
    end

    def new
        @passenger = Passenger.new
    end

    def show
        @passenger = Passenger.find_by(params[:id])
    end

    def create
        @passenger = Passenger.create(passenger_params)
        if @passenger.save
            redirect_to passenger_path(@passenger)
        else
            render "new"
        end
    end


    def passenger_params
        params.require(:passenger).permit(:name)

    end

end