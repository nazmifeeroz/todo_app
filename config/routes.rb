Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	root to: 'tasklists#index'
  	resources :quotes, only: [:create, :destroy]
  	resources :bgimages, only: [:update]

	resources :tasklists, only: [:create, :destroy, :show] do
		resources :tasks, only: [:create, :destroy, :update, :edit]
	end

end
