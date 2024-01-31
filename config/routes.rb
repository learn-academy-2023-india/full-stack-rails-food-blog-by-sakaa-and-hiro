Rails.application.routes.draw do
  get '/blogs', to: 'blog#index', as: 'blogs'
  get '/blogs/new', to: 'blog#new', as: 'new'
  post '/blogs', to: 'blog#create'
  get '/blogs/:id', to: 'blog#show', as: 'show'
  delete '/blogs/:id', to: 'blog#delete', as: 'delete'
end
