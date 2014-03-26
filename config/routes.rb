ReloveMe::Application.routes.draw do
  root :to => 'pages#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/faq' => 'pages#faq'
  get '/search' => 'sales#search'
  post '/search' => 'sales#search'
  post '/result' => 'sales#result'
  # post '/sales/:id/delete' => 'sales#destroy', :as => :sale_delete
  # get '/sales/:id/edit' => 'sales#edit', :as => :sale_edit
  # post '/sales/:id' => 'sales#update'
  resources :users, :items, :sales, :pages
end

