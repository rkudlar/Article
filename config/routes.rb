# == Route Map
#

Rails.application.routes.draw do
root to: "home#index"

devise_for :users

resources :paper
end
