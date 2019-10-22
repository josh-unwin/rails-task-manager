Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tasks', to: 'tasks#index', as: 'tasks'
  get '/tasks/new', to: 'tasks#new', as: 'new'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  post '/tasks/', to: 'tasks#create'
  delete 'tasks/:id', to: 'tasks#destroy'
  patch 'tasks/:id', to: 'tasks#update'
  patch 'tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_complete'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
end
