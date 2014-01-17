Timeliner::Application.routes.draw do  

  resources :timelines do
    resources :events
  end
  resources :events
  resources :links

  root to: 'timelines#index'
end
