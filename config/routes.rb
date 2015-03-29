Rails.application.routes.draw do
  devise_for :receivers, :controllers => {
    registrations: 'receivers/registrations',
    :sessions => 'receivers/sessions',
    :passwords => 'receivers/passwords',
    :confirmations => 'receivers/confirmations'
  }

  authenticate :receiver do
    namespace :receivers do
      resources :organizations, only: [:edit, :update]
      resources :schedules
      get '/' => 'dashboards#index'
      root :to => 'dashboards#index'
    end
  end

  devise_for :providers, :controllers => {
    registrations: 'providers/registrations',
    :sessions => "providers/sessions",
    :passwords => 'providers/passwords',
    :confirmations => 'providers/confirmations'
  }

  authenticate :provider do
    namespace :providers do
      resources :staffs
      resources :organizations, only: [:edit, :update]
      resources :schedules
      get '/' => 'dashboards#index'
      root :to => 'dashboards#index'
    end
  end

  root 'pages#index'
end
