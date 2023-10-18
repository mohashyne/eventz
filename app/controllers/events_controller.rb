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

    # before defining the method
    #  we can use fail to see what needs to be done
    def update
        @event = Event.find(params[:id])
        # event_params = 
        # params.require(:event).permit(:name, :description, :location, :price, :starts_at)
        # we are using this to update the event
        @event.update(event_params)

        # redirect
        # redirect_to event_path(@event)

        # OR

        redirect_to @event
       
    end

    def new
        # create a  form
        @event = Event.new
    end

    def  create
    # event_params = 
    #     params.require(:event).permit(:name, :description, :location, :price, :starts_at)   
     @event = Event.new(event_params)
     @event.save
     redirect_to @event
    end

    def destroy
        @event = Event.find(params[:id])
        @event_name = @event.name # Assuming 'name' is the attribute holding the event's name
        @event.destroy
      
        redirect_to events_path, notice: "Event '#{@event_name}' was successfully deleted."
      end
      
    # to maintain DRY
    private

    def event_params 
        params.require(:event).
        permit(:name, :description, :location, :price, :starts_at)
    end 

end
