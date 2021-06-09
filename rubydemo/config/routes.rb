Rails.application.routes.draw do
  root "welcome#welcomeindex"
  resources :players
  resources :leagues do
    resources :players
  end
  resources :tournaments do
    resources :matchups
  end
  resources :matchups do
    resources :games
  end
  resources :games
end
