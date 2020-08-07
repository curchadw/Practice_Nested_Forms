class PilotsController < ApplicationController
    
    def index
        @pilots = Pilot.all
    end

    def new
        @pilot = Pilot.new
    end

    def show
        @pilot = Pilot.find_by(params[:id])
    end

    def create
        @pilot = Pilot.create(pilot_params)
        if @pilot.save
            redirect_to pilot_path(@pilot)
        else
            render 'new'
        end
    end


    private 
    
    def pilot_params
        params.require(:pilot).permit(:name, :rank)

    end





end