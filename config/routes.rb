Rails.application.routes.draw do
    resources :docs, only: [:index, :new, :create, :destroy, :update, :edit, :view]
    
    get '/docs/:id', to: 'docs#view'
    root "docs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
