Rails.application.routes.draw do

  root 'home#index'

  get 'api/heroes' => 'heroes#index'
  get 'api/heroes/:id' => 'heroes#show'
  post 'api/heroes' => 'heroes#create'
  patch 'api/heroes/:id' => 'heroes#update'
  put 'api/heroes/:id' => 'heroes#update'
  delete 'api/heroes/:id' => 'heroes#destroy'

  # rails g controller Hero index show create update destroy
  # rails g model hero name ability1 ability2 ability3 ability4 ability5 ability6 str:integer str_gain:float agi:integer agi_gain:float intel:integer intel_gain:float move_speed:integer sight_range armor:integer base_attack_time:float damage attack_point:float


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
