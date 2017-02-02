Rails.application.routes.draw do
  get 'reviews/index'

  get '/login'=> 'users#login'

  get '/register' => 'users#register'

  get '/user/:id' => 'users#show'

  get '/user/:id/edit' => 'users#edit'

  post '/user/:id/update' => 'users#update'

  post '/create' => 'users#create'

  post '/login' => 'users#login_user'

  get '/logout' => 'users#logout'

  get '/deals' => 'items#index'

  get '/deal/:id/:type' => 'items#show'

  post '/deal/:id' => 'items#deal'

  post '/cart_add' => 'items#move'

  post '/vote' => 'items#vote'

  get '/cart' => 'purchases#show'

  post '/add_to_cart' => 'purchases#add_to_cart'

  get '/remove/:index'=> 'purchases#remove'

  post '/purchase' => 'purchases#make_purchase'

  get '/review/:id' => 'reviews#index'

  post '/review/:id' => 'reviews#create'

  root 'items#index'

end
