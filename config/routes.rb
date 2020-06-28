Rails.application.routes.draw do
	 root to: 'home#top'
	 devise_for :users
	 resources :users,only: [:show,:index,:edit,:update]
	 resources :books, only:[:new, :create, :index, :show, :edit, :destroy] do
	 	resource :favorites, only: [:create, :destroy]
	 	resources :post_comments, only: [:create, :destroy]
	 end
	 get 'home/about' => 'home#about'
end