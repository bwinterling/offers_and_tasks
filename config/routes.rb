Myapp::Application.routes.draw do
  root :to => "home#index"

  namespace :api do
    namespace :v1 do
      resources :offers, only: [:index]
    end
  end
end
