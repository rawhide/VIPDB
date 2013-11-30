VIPDB::Application.routes.draw do
  namespace :admin do
    resources :scrapings do
      resources :boards do
        resources :comments
      end
    end
  end
  
  namespace :user do
    resources :boards do
      resources :comments
    end
  end

  get "/", to: "top#index"
end
