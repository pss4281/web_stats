Webstats::Application.routes.draw do
  resources :websites, :except => :index do
    get :external_call, :on => :member
  end
  
  get '/dashboard' => 'dashboard#index'

  devise_for :users, skip: [:registrations, :sessions]

  devise_scope :user do
    get "login", to: "devise/sessions#new"
    post "login", to: "devise/sessions#create"
    get "logout", to: "devise/sessions#destroy"
    get "register", to: "devise/registrations#new"
    post "register", to: "devise/registrations#create"
  end

  mount Resque::Server, :at => "/bg_jobs"
  root to: 'home#index'
end
