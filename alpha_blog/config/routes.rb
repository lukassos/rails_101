Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles

  root 'main_pages#home'

  get 'home', to: 'main_pages#home'

  get 'about', to: 'main_pages#about'

end
