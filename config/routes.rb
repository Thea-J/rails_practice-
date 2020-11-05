Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #The 7 RESTful routes - REST is an architectural design pattern
  #HTTP verb -> URL path -> Controller -> Action (Performs CRUD, database query & renders views)

  # 1) Draw the routes: HTTP verb "URL path", to: "controller#action"

                                  #Action View Rails URL helper methods
  get "/posts", to: "posts#index" #posts_path

  get "/posts/:id", to: "posts#show" #post_path(@post)

  get "/posts/new", to: "posts#new" #new_post_path

  post "/posts", to: "posts#create" #posts_path

  get "/posts/:id/edit", to: "posts#edit" #edit_post_path(@post)

  patch "/posts/:id", to: "posts#update" #post_path(@post)

  delete "/posts/:id", to: "posts#destroy" #post_path(@post)

  # 2) Use the resources method to abstract the above code: 
  #resources :controller
  #resources :controller, only: [:controllerAction, ..., :controllerAction]
  #resources :controller, except: [:controllerAction, ..., :controllerAction]
  
end
