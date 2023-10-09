Rails.application.routes.draw do
#  to define the root page by assigning
# our homepage
root  "events#index"

 get "events" => "events#index"
 
#  show single event detail static
    # you can write "fail"  here to see the  output of the error
#  get  "events/1" => "events#show"

#  show single event detail with dynamic id
    get "events/:id" => "events#show" , as: "event"

#  edit route
# e.g this is the url we want to use  
# http://127.0.0.1:3001/events/1/edit
 get "events/:id/edit" => "events#edit", as: "edit_event"


end
