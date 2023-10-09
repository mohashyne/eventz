class EventsController < ApplicationController
    def index
    #    @age = rand(100) 
    #    @events = ["LevelUp","Hackaton","Team Crystal", "Rails User Group"]
    @events = Event.all
    end

    def show
        # static using id value
        # @event = Event.find(1)

        # dynamic using id
        @event = Event.find(params[:id])
    end


    def edit
        # we are using this to get the event that will be edited
        @event = Event.find(params[:id])
    end
end
