Rails.application.routes.draw do
  get "products/index"
  root "users#index"
  get "/login" => "users#index"
  get "/signup" => "users#signup"
  post "/users" => "users#create"

  get "/products" => "products#index"
  get "/products/create" => "products#new"
  post "/products" => "products#create"
  get "/product/:id" => "products#edit"
  delete "/product/:id" => "products#delete"
  get "/logout" => "products#logout"
end
