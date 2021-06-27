# == Route Map
#

Rails.application.routes.draw do
root 'paper#index'

resources :paper
end
