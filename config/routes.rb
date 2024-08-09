Rails.application.routes.draw do
  mount BetterMailerPreviews::Engine, at: "/mailers" if Rails.env.development?

  devise_for :users

  get "dashboard" => "pages#dashboard", :as => :pages_dashboard

  namespace :admin do
    resources :users
  end

  get "up" => "rails/health#show", :as => :rails_health_check

  root "pages#home"
end
