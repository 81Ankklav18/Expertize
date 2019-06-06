Rails.application.routes.draw do
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  resources :themes
  root 'main#index'
  resources :images
  resources :values
  resources :users
  resources :oracles
  resources :sessions, only: [:new, :create, :destroy]
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  # For details on the DSL availablre within this file, see http://guides.rubyonrails.org/routing.html

  # work

  match 'work',             to: 'work#index',             via: 'get'
  match 'choose_image',     to: 'work#choose_image',      via: :get
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  match 'display_theme',    to: 'work#display_theme',     via: :post
  # match 'next_image',       to: 'work#next_image',   via: 'get'
  match '/help',            to: 'main#help',              via: 'get'
  match '/about',           to: 'main#about',             via: 'get'
  match '/contacts',        to: 'main#contacts',          via: 'get'


  # match 'prev_image',       to: 'work#prev_image',   via: 'get'
  match 'results_list',     to: 'work#results_list', via: :get
  # match 'save_value',       to: 'work#save_value',      via: :get

  # api
  # match 'next_image',       to: 'api/api#next_image',   via: 'get'
  # match 'prev_image',       to: 'api/api#prev_image',   via: 'get'
  match 'save_value',       to: 'api/api#save_value',   via: :get


  match '/signup',   to: 'users#new',            via: 'get'
  match '/signin',   to: 'sessions#new',         via: 'get'
  match '/signout',  to: 'sessions#destroy',     via: 'delete'
end
