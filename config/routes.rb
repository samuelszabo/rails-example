Rails.application.routes.draw do
  resources :users
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get 'search' => 'articles#search', :as => 'search_page'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
