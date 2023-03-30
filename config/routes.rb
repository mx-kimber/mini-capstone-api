Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
end

  # get "/products/:synthwear", to: "products#index"
  # # root web_request, controller plural, def action

  # #get "/upgrades", controller: "products", action: "biochip_upgrades"
  # root web_request, controller plural, def action

  # get "/cybernetics", controller: "products", action: "cybernetics"
  # # root web_request, controller plural, def action

  # get "/boosters", controller: "products", action: "boosters"
  # # root web_request, controller plural, def action


