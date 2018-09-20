Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, :lists, :items
  end

  resources :users, :lists, :items

end
