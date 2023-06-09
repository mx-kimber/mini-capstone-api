Rails.application.routes.draw do

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  post "/categories" => "categories#create"
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images" => "images#create"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"

  post "/users" => "users#create"
  
  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
 
  get "/carted_products" => "carted_products#index"
   get "/carted_products/:id" => "carted_products#show"
  post "/carted_products" => "carted_products#create"
  delete "/carted_products/:id" => "carted_products#destroy"

end



