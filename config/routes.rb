Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]

  get '/api-docs' => redirect('/api/index.html?url=/api/v1/api-docs.json')
  # Defines the root path route ("/")
  #get '/v1/', to: "welcome#index"

  get 'v1/greetings', to: 'welcome#index'
  post 'v1/greetings/:id', to: 'welcome#create'
end
