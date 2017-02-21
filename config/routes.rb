Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  root 'articles#index'
  resources :articles
  resources :blogs
end
