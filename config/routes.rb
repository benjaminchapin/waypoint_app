Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/hikes/:id" => "hikes#show"
    get "/hikes" => "hikes#index"
    post "/hikes/" => "hikes#create"
    patch "/hikes/:id" => "hikes#update"
    delete "/hikes/:id" => "hikes#destroy"

    get "/waypoints/:id" => "waypoints#show"
    get "/waypoints" => "waypoints#index"
    post "/waypoints" => "waypoints#create"
    patch "/waypoints/:id" => "waypoints#update"
    delete "/waypoints/:id" => "waypoints#destroy"

  end
end
