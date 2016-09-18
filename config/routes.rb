Rails.application.routes.draw do

  mount Spree::Core::Engine, at: '/'
          # root to: 'pages#home'
  get '/contact', :to => 'spree/contact#show', as: 'contact'
end
