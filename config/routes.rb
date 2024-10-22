require 'sidekiq/web'

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  # Mount Sidekiq
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end

  # Define root route
  root "home#index"

  # Health check route at /up for monitoring app status
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
