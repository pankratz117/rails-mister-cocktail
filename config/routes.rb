Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # index, show, new, create
  root 'cocktails#index'
  resources :cocktails, except: %[:destroy] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: [:destroy]
end
