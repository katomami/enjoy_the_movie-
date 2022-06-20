Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions",
  }
  devise_for :user, skip: [:passwords], controllers: {
    registrations: "user/registrations", sessions: "user/sessions",
  }

  root to: 'user/homes#top'
  get 'about' => 'user/homes#about'
  get 'users/comfirmation' => 'user/users#comfirmation'
  get 'admin/pictures/search', to: "admin/pictures#search"
  delete 'admin/pictures/:id', to: "admin/pictures#destroy", as: 'admin_picture'
  get 'admin/pictures/:id', to: "admin/pictures#show"
  get 'admin/pictures', to: "admin/pictures#index"
  namespace :user do
    resources :users, :only => [:show, :edit, :update, :destroy]
    resources :reviews
    resources :movies do
      collection do
        get 'search'
      end
      resource :likes, only: [:create, :destroy]
    end
  end
  namespace :admin do
    resources :movies
    resources :genres
    resources :users
    resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
