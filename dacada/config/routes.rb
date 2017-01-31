Rails.application.routes.draw do
  get '/login'=> 'users#login'

  get '/register' => 'users#register'

  get '/user/:id' => 'users#show'

  get '/user/:id/edit' => 'users#edit'

  post '/user/:id/update' => 'users#update'

  post '/create' => 'users#create'

  post '/login' => 'users#login_user'

  get '/deals' => 'items#index'

  root 'items#index'

  get '/logout' => 'users#logout'

  get '/deal/:id'=> 'items#show'

end
