Rails.application.routes.draw do
  
  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/edit'

  resources :categories
  root 'static_pages#home'
    
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  
  resources :orders do 
    resources :orderitems
  end

 
  
  get '/home' => 'static_pages#home'
  
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  
 
  get '/login' => 'user#login' 
  get '/logout' => 'user#logout'
 

  
  get '/category/:title' =>  'static_pages#category'
  
  
  resources :items
  
  
  #resources :categories
  
  devise_for :users do
    resources :orders
  end
    
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clear'
  get '/cart/:id' => 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/reduce/:id' => 'cart#reduce'
  get '/cart/increase/:id' => 'cart#increase'
  
  get '/checkout' => 'cart#createOrder'
 # get '/checkout' => 'orders#create'
 
  post '/search' => 'items#search'
  
  get '/aboutSend/:id' => 'static_pages#aboutSend'
  
#  root :to => 'site#home'


  
end
