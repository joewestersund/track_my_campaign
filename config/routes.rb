TrackMyCampaign::Application.routes.draw do


  resources :user_permissions

  namespace :heal do
    resources :cities
    resources :city_designation_achievements
    resources :city_designations
    resources :communication_types
    resources :communications
    resources :contacts
    resources :contact_imports, only: [:new, :create]
    resources :followup_tasks
    resources :honorifics
    resources :interest_levels
    resources :jurisdiction_types
    resources :league_divisions
    resources :milestone_types
    resources :milestones
    resources :organization_types
    resources :policies
    resources :policy_adoptions
    resources :position_types
    resources :resolutions
    resources :status_types
    resources :topics
    get '/reports/to_do'
    get '/reports/cities_summary'
    get '/reports/contacts_summary'
    get '/reports/policy_grid'
  end

  resources :database_instances
  get '/select_database', to: 'database_instances#select_database'
  get '/database_home/:id', to: 'database_instances#home', as: 'database_home'
  resources :organizations

  get '/about', to: 'static_pages#about' # creates named path 'about'
  get '/welcome', to: 'static_pages#welcome' # creates named path 'welcome'
  get '/add_user', to: 'users#new' # creates named path 'add_user'

  resources :users
  get '/profile/edit', to: 'users#edit'

  resources :sessions, only: [:new, :create, :destroy]
  get '/signin', to: "sessions#new"
  delete '/signout', to: "sessions#destroy"

  root 'static_pages#about'

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
