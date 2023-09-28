class EventsController < ApplicationController
    def index
       @age = rand(100) 
       @events = ["LevelUp","Hackaton","eam Crystal", "Rails User Group"]
    end
end
