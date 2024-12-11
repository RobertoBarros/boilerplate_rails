Rails.application.routes.draw do
  mount BetterMailerPreviews::Engine, at: "/mailers" if Rails.env.development?
  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end

  devise_for :users, controllers: {invitations: "users/invitations"}

  get "dashboard" => "pages#dashboard", :as => :pages_dashboard

  namespace :admin do
    resources :users
  end

  get "up" => "rails/health#show", :as => :rails_health_check

  root "pages#home"
end
