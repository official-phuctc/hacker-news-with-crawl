Rails.application.routes.draw do
  get '/', to: 'articles#index'
  get '/articles', to: 'articles#index'
  get '/articles/load-more', to: 'articles#load_more'
end
