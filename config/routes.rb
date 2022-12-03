# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles
  root 'articles#index'

  resources :search_articles
  # post 'search_articles', to: "articles#search_articles"
end
