Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # get 'restaurant/new', to: 'restaurants#new', as: 'restaurant_new' #prefix

end
