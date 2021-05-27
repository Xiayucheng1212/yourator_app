Rails.application.routes.draw do
  get 'admin/', to: 'admin#index'
  get 'admin/:id', to: 'admin#show'
  get 'admin/jobs/new/:id', to:'admin/jobs#new'
  
  concern :shared_actions do
    resources :companies
    resources :jobs
  end
  namespace :admin do
    concerns :shared_actions
  end

  concerns :shared_actions
  

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
