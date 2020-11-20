Rails.application.routes.draw do

  get 'contacts/new'
  get 'contacts/create'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :newss

  resources :recruitments

  root 'homes#top'

  get '/business' => 'homes#business'

  get '/company' => 'homes#company'

  get '/recruit' => 'homes#recruit'

  get '/contact' => 'contacts#new'

  post '/contact' => 'contacts#create'

end
