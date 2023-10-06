Rails.application.routes.draw do
 get "events" => "events#index"
 
#  show single event detail static
    # you can write "fail"  here to see the  output of the error
#  get  "events/1" => "events#show"

#  show single event detail with dynamic id
    get "events/:id" => "events#show"
end
