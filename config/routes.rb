Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
  # destroy "/users/:id" => "users#destroy"
    post "/sessions" => "sessions#create"
  end
end
