class EventsController < ApplicationController
    def index
    #    @age = rand(100) 
    #    @events = ["LevelUp","Hackaton","Team Crystal", "Rails User Group"]
    @events = Event.all
    end
end
