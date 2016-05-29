Rails.application.routes.draw do
  devise_for :podcasts
  
  resources :podcasts, only: [:index,:show] do 
    resources :episodes
  end
  #If you are sign in you see the dashboard if not you see the root welcome.
  authenticated :podcast  do 
    root 'podcasts#dashboard', as: 'authenticated_root'
  end

  root 'welcome#index'
end
