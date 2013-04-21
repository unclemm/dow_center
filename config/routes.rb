DowCenter::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]

  match '/signin', to: 'session#new'
  match '/signout', to: 'session#destroy', via: :delete
  
  match '/signup', to: 'users#new'

  match '/lifeguard', to: 'lifeguard_pages#home'
  match '/supervisor', to: 'supervisor_pages#home'
  match '/regular', to: 'regular_worker_pages#home'
  match '/admin', to: 'admin_pages#home'
  match '/message', to: 'admin_pages#message'
  match '/home', to: 'dow_center_pages#home'



##
#  lifeguard_path => '/lifeguard'
#  lifeguard_url => 'http://localhost:3000/lifeguard'

#  supervisor_path => '/supervisor'
#  supervisor_url => 'http://localhost:3000/supervisor'

#  regular_path => '/regular'
#  regular_url => 'http://localhost:3000/regular'

#  admin_path => '/admin'
#  admin_url => 'http://localhost:3000/admin'

  root to: 'sessions#new'


  get "admin_pages/home"
  get "admin_pages/message"
  get "admin_pages/worker_list"
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
  
