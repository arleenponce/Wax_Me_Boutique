Rails.application.routes.draw do

  match('/services/show_specials', {:via => :get, :to => 'services#show_specials'})
  
  devise_for :admins
  
  match '/services/search', {:via => :get, :to => 'services#search'}

  root :to => "home#index"
  match('services/wax-men', {:via => :get, :to => "services#wax_men"})
  match('services/wax-women', {:via => :get, :to => "services#wax_women"})
  match('services/wax-browss', {:via => :get, :to => "services#wax_brows"})
  match('services/advanced-treatment', {:via => :get, :to => "services#advanced_treatment"})
  match('services/corrective-peels', {:via => :get, :to => "services#chemical_peels"})
  match('services/facials', {:via => :get, :to => "services#facials"})
  # match('services/waxing', {:via => :get, :to => "services#waxing"})
  match('services/microblading', {:via => :get, :to => "services#microblading"})
  match('services/sunless-tan', {:via => :get, :to => "services#spray_tan"})

  resources :services
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
