Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/cars" => "cars#index"
  get "/cars/:id" => "cars#show"
  post "/cars" => "cars#create"
  patch "/cars/:id" => "cars#update"
  delete "/cars/:id" => "cars#destroy"

end
