Manticore::Application.routes.draw do

  resources :characters do
    resources :statistics
    resources :fortitudes
    resources :reflexes
    resources :wills
    resources :acs
    resources :hps
    resources :initiatives
    resources :items
    resources :specials
    resources :feats
    resources :spells
    resources :skills
    resources :backgrounds
  end
    
  get "home/index"

 root :to => "home#index"

end
