Rails.application.routes.draw do
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
  root :to => "owner#show"
 # root :to => 'create_owner#index'
resources :messages
    post 'messages/create'
    get "/show" => "messages#show"
  post "/create" => "messages#create"
    get "/delete" => "messages#destroy"
<<<<<<< HEAD
get "message/sms" => "messages#show"
 
=======
 
=======

  
  root :to => "owners#show"
  #root1 :to => "owners#index"

  # root :to => "home#index"
  #get "menu" => "owners#show"
  resources :owners
    get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "owners#new", :as => "signup"
  resources :owners
  resources :sessions
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
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
get ':controller(/:action(/:id(.:format)))'
post ':controller(/:action(/:id(.:format)))'
end
