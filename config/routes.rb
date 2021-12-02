Rails.application.routes.draw do
  resources :meetings
  resources :students, only: [:index]
  resources :teachers, only: [:index, :show] do 
    resources :students do 
      resources :meetings, only: [:index]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
