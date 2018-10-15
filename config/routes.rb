Rottenpotatoes::Application.routes.draw do
  resources :movies do
    member do
      get 'same_director'
    end
  end
  root :to => 'movies#index'
end