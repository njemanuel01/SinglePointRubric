Rails.application.routes.draw do
  root :to => 'user_sessions#new'
  resources :user_sessions
  resources :users, except: [:index]

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  
  get '/objectives/new/:id' => "objectives#new", :as => :new_objective
  
  resources :password_resets
  resources :objectives
  resources :rubrics
  resources :courses
  get 'my_courses' => 'courses#my_index', :as => :my_courses
  get 'add_course/:id' => 'courses#add_course', :as => :add_course
  get 'remove_course/:id' => 'courses#remove_course', :as => :remove_course
  get 'my_rubrics' => 'rubrics#my_index', :as => :my_rubrics
  get 'add_rubric/:id' => 'rubrics#add_rubric', :as => :add_rubric
  get 'remove_rubric/:id' => 'rubrics#remove_rubric', :as => :remove_rubric
  
  get 'add_note/:id' => 'student_rubrics#add_note', :as => :add_notes
  
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
