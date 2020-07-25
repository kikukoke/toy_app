Rails.application.routes.draw do
  root "users#new"
  get  "/users/index", to: "users#index", as: "users_index"
  get  "/users/:id",   to: "users#show" , as: "users_show"
  post "/users/create", to: "users#create", as: "users_create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
