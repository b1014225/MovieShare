Rails.application.routes.draw do
  get '/index' => 'text#index'
  get '/add' => 'text#add'
  post '/index' => 'text#create'
  get '/detail/:id' => 'text#detail' ,as:'detail'
  delete '/detail/:id' => 'text#delete',as:'delete'
  get 'detail/:id/edit' => 'text#edit',as:'edit'
  patch 'detail/:id' => 'text#update',as:'update'

  get '/user/add' => 'user#add',as:'user_add'
  post '/user/add' => 'user#create',as:'user_create'
  get '/user/show' => 'user#show',as:'user_show'
  get '/user/show/:id' => 'user#show_detail',as:'user_show_detail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
