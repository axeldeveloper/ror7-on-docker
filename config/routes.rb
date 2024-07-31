# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users

  get 'welcome/index'
  get 'welcome/contact'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
