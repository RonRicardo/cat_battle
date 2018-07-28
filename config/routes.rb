Rails.application.routes.draw do
  resources :battles
  resources :teams
  resources :battle_cats
  resources :trainers
  resources :cats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
