Rails.application.routes.draw do
  resources :comments
  resources :blogs do
    resources :likes
  end
  
  devise_for :blogs
  get 'users/show'
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
