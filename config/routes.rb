Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'

  get '/business' => 'homes#business'

  get '/details' => 'homes#details'

  get '/contact' => 'homes#contact'

end
