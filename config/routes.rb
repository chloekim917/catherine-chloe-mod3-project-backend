Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :expenditures
      resources :categories
      get '/expenditures_by_date', to: 'expenditures#by_date'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
