Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :pages , :path => '/' do
     get 'undo_link', on: :member
  end
  post "versions/:id/revert" => "versions#revert", :as => "revert_version"
  get '/pages/Criminal', to: 'pages#criminal', as: :pages_criminal
  get '/pages/Civil', to: 'pages#civil', as: :pages_civil
  get '/pages/Property', to: 'pages#property', as: :pages_property
  get '/pages/Income_tax', to: 'pages#income_tax', as: :pages_income_tax
  get '/pages/Environmental', to: 'pages#environmental', as: :pages_environmental
  get '/pages/Education', to: 'pages#education', as: :pages_education
  get '/pages/Entertainment', to: 'pages#entertainment', as: :pages_entertainment
  get '/pages/Constitutional', to: 'pages#constitutional', as: :pages_constitutional
  get '/pages/about', to: 'pages#about', as: :pages_about
  get '/pages/how_to', to: 'pages#how_to', as: :pages_how_to
  get '/pages/Hire', to: 'pages#hire', as: :pages_hire

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
