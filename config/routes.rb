Rails.application.routes.draw do

  mount Spree::Core::Engine, at: '/'
          # root to: 'pages#home'
end
