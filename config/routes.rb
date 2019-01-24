Rails.application.routes.draw do
  root to: 'monsters#index'
  get 'monsters/stats', to: 'monsters#stats', as: 'monsters_stats'
  resources :monsters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
