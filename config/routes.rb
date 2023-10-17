Rails.application.routes.draw do
# #  to define the root page by assigning
# # our homepage
# root  "events#index"

#  get "events" => "events#index"

# #  at first the path for the new is been 
# # subtituted as  the show path because it
# # sees the events/new  "new" as the "id" so it 
# # autommatically choose that  path of events/show
# # we need to define the "new" path  above the previous
# # matching paths
# get "events/new" => "events#new"

 
# #  show single event detail static
#     # you can write "fail"  here to see the  output of the error
# #  get  "events/1" => "events#show"

# #  show single event detail with dynamic id
#     get "events/:id" => "events#show" , as: "event"

# #  edit route
# # e.g this is the url we want to use  
# # http://127.0.0.1:3001/events/1/edit
#  get "events/:id/edit" => "events#edit", as: "edit_event"

# # when a PATCH request is made to a URL like /events/1, Rails will route it to the update action in the EventsController, passing the ID 1 as a parameter.
# patch "events/:id" => "events#update"
# # then we will go to our events  controller to define the action



# INSTEAD OF ALL THE PATHS ABOVE WE USE THIS FOR 
# SIMPLICITY

root "events#index"

resources :events

end
