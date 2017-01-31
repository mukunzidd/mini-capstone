Rails.application.routes.draw do
	resources :products
	resources :suppliers

	root 'products#index'
end
