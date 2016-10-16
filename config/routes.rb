Rails.application.routes.draw do

	resources 'food_items'

	root 'welcome#index'

	get 'menu' => 'welcome#menu'

	get 'contact_us' => 'welcome#contact_us'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
