# Rails.application.routes.draw do
#   get 'pages/home'
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end
Rails.application.routes.draw do
  resources :lists, only: %i[index create new destroy show] do
    resources :bookmarks, only: %i[create new]
  end
  resources :bookmarks, only: :destroy
  root to: 'list#index'
end
