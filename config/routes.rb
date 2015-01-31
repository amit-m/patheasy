Patheasy::Application.routes.draw do
  resources :medical_tests

  resources :book_my_tests
  resources :categories


  resources :posts


  devise_for :admins

  get "home/index"
  get "admin/change_password"
  get "admin/admin_lists"
  get "admin/save_password"
#  put "admin/update_admin"
#  post "admin/update_admin"
#  get "admin/update_info"
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
    match '/admin/add_admin' => 'admin#new'
    match '/admin/:id/edit' => 'admin#edit', as: :edit_admin
    
     match '/admin/save_admin' => 'admin#save_admin'
     match '/admin/report' => 'admin#report'
     match '/admin/test_req_detail/:id' => 'admin#test_req_detail'
     match "/admin/save_password"  => "admin#save_password", :via => [:put]
     match '/admin/block' => 'admin#block'
     match '/admin/unblock' => 'admin#unblock'
     match '/admin/update' => 'admin#update' #, :via => [:put,:post,:get]
    
     match '/admin/test_requests' => 'admin#test_requests'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
