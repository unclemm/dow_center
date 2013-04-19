DowCenter::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin', to: 'session#new'
  match '/signout', to: 'session#destroy', via: :delete
  
  match '/signup', to: 'users#new'

  root to: 'dow_center_pages#home'

  get "admin_pages/home"
  get "admin_pages/message"
 get  "admin_pages/worker_list"
  get "lifeguard_pages/home"
  get "lifeguard_pages/rules_and_protocols"
  get "supervisor_pages/home"
  get "supervisor_pages/rules_and_protocols"
  get "regular_worker_pages/home"
  get "regular_worker_pages/rules_and_protocols"
  get "dow_worker_pages/schedule"
  get "dow_center_pages/regular"
  get "dow_center_pages/supervisor"
  get "dow_center_pages/lifeguard"
  get "dow_center_pages/admin"




end
  
