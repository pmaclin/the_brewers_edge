Rails.application.routes.draw do
  # Routes for the Brew_type resource:
  # CREATE
  get '/brew_types/new',      :controller => 'brew_types', :action => 'new',    :as => 'new_brew_type'
  post '/brew_types',         :controller => 'brew_types', :action => 'create', :as => 'brew_types'

  # READ
  get '/brew_types',          :controller => 'brew_types', :action => 'index'
  get '/brew_types/:id',      :controller => 'brew_types', :action => 'show',   :as => 'brew_type'

  # UPDATE
  get '/brew_types/:id/edit', :controller => 'brew_types', :action => 'edit',   :as => 'edit_brew_type'
  patch '/brew_types/:id',    :controller => 'brew_types', :action => 'update'

  # DELETE
  delete '/brew_types/:id',   :controller => 'brew_types', :action => 'destroy'
  #------------------------------

  # Routes for the Brew resource:
  # CREATE
  get '/brews/new',      :controller => 'brews', :action => 'new',    :as => 'new_brew'
  post '/brews',         :controller => 'brews', :action => 'create', :as => 'brews'

  # READ
  get '/brews',          :controller => 'brews', :action => 'index'
  get '/brews/:id',      :controller => 'brews', :action => 'show',   :as => 'brew'

  # UPDATE
  get '/brews/:id/edit', :controller => 'brews', :action => 'edit',   :as => 'edit_brew'
  patch '/brews/:id',    :controller => 'brews', :action => 'update'

  # DELETE
  delete '/brews/:id',   :controller => 'brews', :action => 'destroy'
  #------------------------------

  # Routes for the Standard resource:
  # CREATE
  get '/standards/new',      :controller => 'standards', :action => 'new',    :as => 'new_standard'
  post '/standards',         :controller => 'standards', :action => 'create', :as => 'standards'

  # READ
  get '/standards',          :controller => 'standards', :action => 'index'
  get '/standards/:id',      :controller => 'standards', :action => 'show',   :as => 'standard'

  # UPDATE
  get '/standards/:id/edit', :controller => 'standards', :action => 'edit',   :as => 'edit_standard'
  patch '/standards/:id',    :controller => 'standards', :action => 'update'

  # DELETE
  delete '/standards/:id',   :controller => 'standards', :action => 'destroy'
  #------------------------------

  # Routes for the Batch resource:
  # CREATE
  get '/batches/new',      :controller => 'batches', :action => 'new',    :as => 'new_batch'
  post '/batches',         :controller => 'batches', :action => 'create', :as => 'batches'

  # READ
  get '/batches',          :controller => 'batches', :action => 'index'
  get '/batches/:id',      :controller => 'batches', :action => 'show',   :as => 'batch'

  # UPDATE
  get '/batches/:id/edit', :controller => 'batches', :action => 'edit',   :as => 'edit_batch'
  patch '/batches/:id',    :controller => 'batches', :action => 'update'

  # DELETE
  delete '/batches/:id',   :controller => 'batches', :action => 'destroy'
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get '/reviews/new',      :controller => 'reviews', :action => 'new',    :as => 'new_review'
  post '/reviews',         :controller => 'reviews', :action => 'create', :as => 'reviews'

  # READ
  get '/reviews',          :controller => 'reviews', :action => 'index'
  get '/reviews/:id',      :controller => 'reviews', :action => 'show',   :as => 'review'

  # UPDATE
  get '/reviews/:id/edit', :controller => 'reviews', :action => 'edit',   :as => 'edit_review'
  patch '/reviews/:id',    :controller => 'reviews', :action => 'update'

  # DELETE
  delete '/reviews/:id',   :controller => 'reviews', :action => 'destroy'
  #------------------------------

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
