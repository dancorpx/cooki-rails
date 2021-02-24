Rails.application.routes.draw do
  resources :recipes
  
  get 'home/about'
  root to: 'recipes#index'
  get 'home/index'
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
