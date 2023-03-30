Rails.application.routes.draw do

  get "/synthwear", controller: "products", action: "synthwear"
  # root web_request, controller plural, def action

  get "/upgrades", controller: "products", action: "biochip_upgrades"
  # root web_request, controller plural, def action

  get "/cybernetics", controller: "products", action: "cybernetics"
  # root web_request, controller plural, def action

  get "/boosters", controller: "products", action: "boosters"
  # root web_request, controller plural, def action

end

