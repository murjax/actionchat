Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :rooms do
      resources :messages
    end
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root to: 'rooms#show', id: 1
  end
end
