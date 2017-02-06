Rails.application.routes.draw do
	resources :suppliers
	resources :products do
		resources :images
	end

	root 'products#index'

	get "/signup" => 'users#new'
	post "/users" => 'users#create'
	get "/login" => 'sessions#new'
	post "/login" => 'sessions#create'
	get "/logout" => 'sessions#destroy'

	post "/orders", to: 'orders#create'
	get "/orders/:id", to: 'orders#show'

end

