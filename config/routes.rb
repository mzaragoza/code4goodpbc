Rails.application.routes.draw do
  devise_for :providers, :controllers => {
    registrations: 'providers/registrations',
    :sessions => "providers/sessions",
    :passwords => 'providers/passwords',
    :confirmations => 'providers/confirmations'
  }

  authenticate :provider do
    namespace :providers do
      get '/' => 'dashboards#index'
      root :to => 'dashboards#index'
    end
  end

  root 'pages#index'
end
