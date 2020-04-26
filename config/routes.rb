Rails.application.routes.draw do
 
  
# ============= Auth ====================
	post '/auth/login', to: 'authentication#login'
	get '/auth/verify', to: 'authentication#verify'
  resources :users do
    resources :posts
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end