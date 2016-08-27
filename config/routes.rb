Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "voter_stats#new"
  resources :voter_stats, only: [:new, :create]
  get '/v/:address', to: 'voter_stats#show', as: :address_voter_stats
end
