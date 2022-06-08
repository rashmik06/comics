Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :comicbooks do
    resources :reviews do
      resources :replies 
    end
  end




  resources :publishers
  get "search", to: "comicbooks#search"
  get "publisher_commic", to: "comicbooks#publisher_commic"
  
end
