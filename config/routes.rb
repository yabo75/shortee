Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :urls, :only => [:show, :new, :create]
  root :to => redirect('/urls/new')
  get '/urls', to: 'urls#new'
end
