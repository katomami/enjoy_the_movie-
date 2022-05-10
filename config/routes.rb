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

namespace :admin do
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
