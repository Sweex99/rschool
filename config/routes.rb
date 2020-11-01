Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  namespace :account do
    get '/', to: 'organizations#index'
    resources :organizations
    resources :class_rooms
    
    namespace :admin do
      resource :panel_classes
      resource :panel_organizations
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tests#index'
end
