Rails.application.routes.draw do
  devise_for :users

  # APIs
  namespace :api do
    resources :bikes, only: [] do
      collection do
        get :search
      end
    end
  end
end
