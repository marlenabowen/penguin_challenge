Rails.application.routes.draw do
  get 'penguins/index'

  resources :penguins

  root 'penguins#index'
end
