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

	get "/orders/:id", to: 'orders#show'
	put "/orders/:id", to: 'orders#update'


	get "/cart", to: 'carted_products#index'
	post "/cart", to: 'carted_products#create'

end

