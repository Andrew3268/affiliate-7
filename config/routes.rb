Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users 
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
  end
  root 'posts#index'

  resources :dealzons
  # root 'dealzons#index'

  resources :events
  # root 'events#index'

  resources :blogs
  # root 'blogs#index'

  resources :categories
  # root 'categories#index'
  resources :acategories
  # root 'acategories#index'
  resources :ecategories
  # root 'ecategories#index'
  resources :bcategories
  # root 'bcategories#index'

  
  # get '/bridges/aboutUs', to: 'bridges#aboutUs', as: 'aboutUs'
  get '/search/discountCode', to: 'search#discountCode', as: 'discountCode'
  get '/search/quicksearch', to: 'search#quicksearch', as: 'quicksearch'


  # get 'home/index'
  # root 'home#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
