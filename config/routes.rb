Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#home'

  #get 'welcome/home', to: 'welcome#home'

  get 'welcome/about', to: 'welcome#about'

end
