Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  #
  root 'users#index'
  resources :users
  resources :contacts
  resources :activities
  resources :questions do
    resources :answers, except: [:update, :destroy]
  end
  resources :answers, only: [:update, :destroy]

  delete "/logout" => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]
  #
  # get 'users/show'
  #
  # get 'users/new'
  #
  # get 'users/edit'
  #
  # get 'users/create'
  #
  # get 'users/update'
  #
  # get 'users/destroy'
  #
  # get 'activities/index'
  #
  # get 'activities/show'
  #
  # get 'activities/new'
  #
  # get 'activities/edit'
  #
  # get 'activities/create'
  #
  # get 'activities/update'
  #
  # get 'activities/destroy'
  #
  # get 'contacts/index'
  #
  # get 'contacts/show'
  #
  # get 'contacts/new'
  #
  # get 'contacts/edit'
  #
  # get 'contacts/create'
  #
  # get 'contacts/update'
  #
  # get 'contacts/destroy'
  #
  # get 'answers/index'
  #
  # get 'answers/show'
  #
  # get 'answers/new'
  #
  # get 'answers/edit'
  #
  # get 'answers/create'
  #
  # get 'answers/update'
  #
  # get 'answers/destroy'
  #
  # get 'questions/index'
  #
  # get 'questions/show'
  #
  # get 'questions/new'
  #
  # get 'questions/edit'
  #
  # get 'questions/create'
  #
  # get 'questions/update'
  #
  # get 'questions/destroy'


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
