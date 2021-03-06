Eslfinder::Application.routes.draw do

  resources :faqs

  resources :admin_app_settings

  resources :auto_offers

  resources :students

  resources :reservations

  resources :user_states

  resources :orders

  resources :offers

  post '/rate' => 'rater#create', :as => 'rate'
  resources :app_settings

  resources :user_settings

  resources :countries

  resources :regions

  resources :schools

  devise_for :users
  resources :searches
  resources :agencies

  resources :charges

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'searches#new'

  # Example of regular route:
     get 'find' => 'searches#find'
     get 'find/:id' => 'searches#find'
     get 'seat' => 'searches#seat'
     get 'matches/:id' => 'searches#seat', as: 'matches'
     get 'settings/:id' => 'user_settings#edit', as: 'settings'

     get '/set_state' => 'user_states#setState', :as => 'set_state'



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
