Rails.application.routes.draw do
  root to: 'cocktails#home'
  resources :cocktails, only: [:index, :new, :create, :show] do
      resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]
end
