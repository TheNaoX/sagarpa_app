SagarpaApp::Application.routes.draw do
  devise_for :users

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'home#index'

  get 'solicitante' => 'solicitantes#menu', :as => :menu_solicitante                                                                             

  match 'solicitante/new_permiso_pernocta' => 'solicitantes#new', :as => :new_pemiso
  match 'solicitante/create' => 'solicitantes#create'

  match 'solicitante/:id/edit' => 'solicitantes#edit', :as => :edit_permiso
  match 'solicitante/:id/update' => 'solicitantes#update'

  match 'solicitante/history' => 'solicitantes#show_history', :as => :history_permiso
  match 'solicitante/:id/imprimir' => 'solicitantes#show_pdf', :as => :show_pdf
  match 'solicitante/search' => 'solicitantes#search', :as => :search_permiso
  match 'solicitante/show' => 'solicitantes#show'

  match 'acerca_de' => 'home#about', :as => :about_home
  match 'contacto' => 'home#contact', :as => :contact_home


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
