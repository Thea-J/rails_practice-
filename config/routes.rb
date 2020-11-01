Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #The 7 RESTful routes - REST is an architectural design pattern
  #HTTP verb -> URL path -> Controller -> Action (Performs CRUD, database query & renders views)

  # 1) Draw the routes: HTTP verb "URL path", to: "controller#action"

  get "/posts", to: "posts#index"

  get "/posts/:id", to: "posts#show"

  get "/posts/new", to: "posts#new"

  post "/posts", to: "posts#create"

  get "/posts/:id/edit", to: "posts#edit"

  patch "/posts/:id", to: "posts#update"

  delete "/posts/:id", to: "posts#destroy"

  # 2) Use the resources method to abstract the above code: 
  #resources :controller
  #resources :controller, only: [:controllerAction, ..., :controllerAction]
  #resources :controller, except: [:controllerAction, ..., :controllerAction]
  
end
