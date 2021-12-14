Rails.application.routes.draw do
  devise_for :users

  resources :projects

  # APIs
  namespace :api do
    resources :bikes, only: [] do
      collection do
        get :search
      end
    end
  end
end
