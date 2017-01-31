Rails.application.routes.draw do
  get '/login'=> 'users#login'

  get '/register' => 'users#register'

  post '/create' => 'users#create'

  post '/login' => 'users#login_user'

  get '/deals' => 'items#index'

  root 'items#index'

  get '/logout' => 'users#logout'

  get '/deal/:id'=> 'items#show'

  get '/cart' => 'purchase#show'

  post '/add_to_cart' => 'purchase#add_to_cart'

  post '/vote' => 'items#vote'

  post '/cart_add' => 'items#move'

  get '/cancel/:index'=> 'purchase#cancel'

end
