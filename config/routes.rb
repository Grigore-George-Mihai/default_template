require "sidekiq/web"
require "sidekiq-scheduler/web"

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  # Mount Sidekiq
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => "/sidekiq"
    mount PgHero::Engine => "/pghero"
  end

  # Define root route
  root "home#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
