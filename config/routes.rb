TodoListApplication.routes.draw do
  root 'todos#index'
  get '/todo', to: 'todos#index'
  get '/todo/new', to: 'todos#new'
  get '/todo/:id', to: 'todos#show'
  get '/todo/:id/edit', to: 'todos#edit'
  post '/todo/', to: 'todos#create'
  put '/todo/:id', to: 'todos#update'
  patch '/todo/:id', to: 'todos#update'
  delete '/todo/:id', to: 'todos#destroy'
end
