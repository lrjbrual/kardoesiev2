Rails.application.routes.draw do

  mount Spree::Core::Engine, at: '/'
          # root to: 'pages#home'
            get '/forms', :to => 'spree/forms#new'
            resources :forms, only: [:new, :create]

end
