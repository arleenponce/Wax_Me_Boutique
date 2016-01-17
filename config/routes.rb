Rails.application.routes.draw do

  match('/services/show_specials', {:via => :get, :to => 'services#show_specials'})
  
  devise_for :admins
  
  root :to => "home#index"
  match('services/wax-men-body', {:via => :get, :to => "services#wax_men_body"})
  match('services/wax-men-bikini', {:via => :get, :to => "services#wax_men_bikini"})
  match('services/wax-men-brow', {:via => :get, :to => "services#wax_men_brow"})
  match('services/wax-men-face', {:via => :get, :to => "services#wax_men_face"})
  match('services/wax-men-packages', {:via => :get, :to => "services#wax_men_packages"})
  match('services/wax-women-body', {:via => :get, :to => "services#wax_women_body"})
  match('services/wax-women-bikini', {:via => :get, :to => "services#wax_women_bikini"})
  match('services/wax-women-brow', {:via => :get, :to => "services#wax_women_brow"})
  match('services/wax-women-face', {:via => :get, :to => "services#wax_women_face"})
  match('services/wax-women-packages', {:via => :get, :to => "services#wax_women_packages"})
  match('services/advanced-treatment', {:via => :get, :to => "services#advanced_treatment"})
  match('services/chemical-peels', {:via => :get, :to => "services#chemical_peels"})
  match('services/organic-facials', {:via => :get, :to => "services#organic_facials"})
  match('services/waxing', {:via => :get, :to => "services#waxing"})
  match('services/spray-tan', {:via => :get, :to => "services#spray_tan"})

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
