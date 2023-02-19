Rails.application.routes.draw do
  get 'presents/woman' => 'presents#woman'
  get 'presents/man' => 'presents#man'
  get 'presents/others' => 'presents#others'
  
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :presents do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  root 'presents#index'
end
