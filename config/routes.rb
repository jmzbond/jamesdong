# -*- encoding : utf-8 -*-
Jamesdong::Application.routes.draw do

  root 'static_pages#home'
  resources :contacts, :only => [:new, :create]

  match '/entrepreneur',            to: 'static_pages#entrepreneur',        via: 'get'
  match '/foodie',                  to: 'static_pages#foodie',              via: 'get'
  match '/photographer',            to: 'static_pages#photographer',        via: 'get'
  
    match '/photographer/urban_playgrounds',         to: 'static_pages#urban',               via: 'get'
    match '/photographer/human_expressions',         to: 'static_pages#people',              via: 'get'
    match '/photographer/natural_environments',      to: 'static_pages#nature',              via: 'get'
    match '/photographer/the_stars_reply',           to: 'static_pages#sigphi',              via: 'get'
    match '/photographer/the_deep_south',            to: 'static_pages#antarctica',          via: 'get'
    match '/photographer/reflections_in_yosemite',   to: 'static_pages#yosemite',            via: 'get'
    match '/photographer/services',                  to: 'static_pages#services',            via: 'get'
      match '/photographer/services/faq',            to: 'static_pages#faq',                 via: 'get'
     

  # This line mounts Monologue's routes at the root of your application.
  # This means, any requests to URLs such as /my-post, will go to Monologue::PostsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Monologue relies on it being the default of "monologue"
  # mount Monologue::Engine, :at => '/entrepreneur/blog' # or whatever path, be it "/blog" or "/monologue"

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
