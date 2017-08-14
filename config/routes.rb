Rails.application.routes.draw do
  # get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    # アクションの追加
    member do
      get 'fav'
    end
    resources :comments
  end
  root 'posts#index'
end
