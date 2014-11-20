Rails.application.routes.draw do
  
  root 'welcome#index'
 
  #   get 'products/:id' => 'catalog#view'
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  resources :movies
  resources :welcome, only: :index do
    get 'about', on: :collection
    get 'contact', on: :collection
  end
  resources :queries, only: :create

end
