Rails.application.routes.draw do
  root "home#index"

  resources :events
  resources :event_types
  resources :users
  get "monthly_report" => "events#monthly_report"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
