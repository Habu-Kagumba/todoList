TodoListApplication.routes.draw do
  root 'todos#index'
  get '/todos', to: 'todos#index'
  get '/todos/new', to: 'todos#new'
  get '/todos/:id', to: 'todos#show'
  get '/todos/:id/edit', to: 'todos#edit'
  post '/todos', to: 'todos#create'
  put '/todos/:id', to: 'todos#update'
  patch '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy'
end
