Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  get 'projects/index'

  get 'about/index', to: 'about#index', as: 'aboutus'

  root 'welcome#index'
end
