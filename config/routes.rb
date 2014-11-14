Rails.application.routes.draw do




  get 'categorias/getfilter'
  get 'backlogs/getfilter'  
  get 'status/getfilter'  
  get 'statusbacklog/getfilter'

  # get 'sistemas/index'
  #get 'session/destroy' => 'sessions#destroy' #verificar com o JP uma maneira mais polida de fazer isto 
  #get 'sistemas/getAll' => 'sistemas#getAll' #verificar com o JP uma maneira mais polida de fazer isto 

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '/main' => 'home#main'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
	resources :backlogs
	resources :categorias
    resources :registrations
	resources :classificacoesbacklog
	resources :statusbacklog
	resources :sessions
	resources :sistemas
	resources :status

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
