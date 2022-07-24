Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	root 'home#index'

	get "/auth/:provider/callback" => "sessions#create"
	delete "/logout" => "sessions#destroy"

	resources :hospitals, only: %i[index]

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :hospitals, only: [:index]
    end
  end
  # get '*path', to: 'home#index'
end
