Rails.application.routes.draw do
  resources :scenes
  resources :stages do
    resources :scenes, only: [:index]
  end
  resources :scenarios do
    resources :stages, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
