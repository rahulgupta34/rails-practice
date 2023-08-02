Rails.application.routes.draw do
  resources :posts
  namespace :admin do
    resources :admins
    resources :adminusers, only: [:index]
    resources :adminposts, only: [:index]
  end
      root "users#index"
      resources :users
      get "users/adminusersupdate/:id", to: "admin/adminusers#edit"
      patch "users/admin/:id", to: "admin/adminusers#update"

      get "admin/adminpostsroleedit/:id", to: "admin/adminposts#edit"
      patch "admin/adminpostsupdaterole/:id", to: "admin/adminposts#update"
end
