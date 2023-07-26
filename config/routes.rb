Rails.application.routes.draw do
  root 'home#index'
  # get "/home(/:id)", to: "home#index"
  # get "/homeshow/:id", to: "home#show"
  # concern :commentable do
  #   resources :comments
  # end

  # concern :image_processing do
  #   resources :users
  # end

  # scope "/admin" do
  #   concerns :commentable
  # end

  # namespace :admin do
  #   resources :users
  # end

  # resources :magazines do
   
  #     get "collection_view", on: :collection
    
  #   resources :ads, shallow: true do
  #       get "ad_preview", on: :member
  #   end

  # end
  
  # get "/home/:name", to: redirect { |path_params,req| "/artist/#{path_params[:name]}" }
  # get "/artist/:name", to: "home#show"

  # # resources :users, param: :ids

  # draw(:admin)

  resources :magazines do
    resources :ads, shallow: true
  end

end
