ReloveMe::Application.routes.draw do
  root :to => 'pages#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/faq' => 'pages#faq'
  get '/search' => 'sales#search'
  post '/search' => 'sales#search'
  post '/new' => 'items#new'
  post '/edit' => 'sales#edit'
  resources :users, :items, :sales, :pages
end

