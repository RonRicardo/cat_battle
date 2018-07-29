Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :battles
      resources :teams
      resources :battle_cats
      resources :trainers
      resources :cats, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
