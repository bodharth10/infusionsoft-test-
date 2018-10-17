Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'crms#index'
  get "/product_revenue" => "crms#product_revenue", :as => :product_revenue
  post "/tag_import" => "crms#tag_import", :as => :tag_import
  resources :crms do
  	collection do
     post 'notification/:security_key' => 'crms#notification',:as => :notification
    end
  end
end  
