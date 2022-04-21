# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :series, only: %i[index show]
      resources :seasons, only: %i[index show]
      resources :episodes, only: %i[index show]
    end
  end
end
