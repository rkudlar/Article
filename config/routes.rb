Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :paper
  resources :link

  scope :link do
    get '/:url', to: 'link#url'
  end
end
