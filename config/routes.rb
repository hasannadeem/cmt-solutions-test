Rails.application.routes.draw do
  root to: 'providers#index'

  resources :providers, only: [:index, :show, :create] do
    collection do
      get :top_searched_npis
    end
  end
end
