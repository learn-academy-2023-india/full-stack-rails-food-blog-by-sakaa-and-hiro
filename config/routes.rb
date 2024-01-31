Rails.application.routes.draw do
  get '/blogs', to: 'blog#index', as: 'blogs'
end
