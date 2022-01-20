Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  delete "/roles/:id", to: "mods#destroy_role"

  resources :players, param: :slug
  resources :mods, param: :slug
end
