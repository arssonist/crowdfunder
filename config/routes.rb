Rails.application.routes.draw do
  root 'users#new'

  resources :users do
    resources :projects do
      resources :pledges
    end
  end

  resources :projects
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
