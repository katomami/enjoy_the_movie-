Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  devise_for :user,skip: [:passwords,], controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}

root to: 'user/homes#top'
get 'about' => 'user/homes#about'

get 'users/comfirmation' => 'user/users#comfirmation'


namespace :user do
  resources :users, :only => [:show, :edit, :update, :destroy]
  resources :movies do
    collection do
      get 'search'
    end
  end
end

namespace :admin do
  resources :movies
  resources :genres
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
