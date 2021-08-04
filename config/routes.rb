Rails.application.routes.draw do
  get "/experiences" => "experiences#index"

  get "/experiences/:id" => "experiences#show"

  post "/experiences" => "experiences#create"

  patch "experiences/:id" => "experiences#update"

  delete "experiences/:id" => "experiences#destroy"

  get "/tags" => "tags#index"

  get "/tags/:id" => "tags#show"

  post "/users" => "users#create"

  patch "/users/:id" => "users#update"

  post "/sessions" => "sessions#create"

  post "/experience-tags" => "experience_tags#create"

  delete "/experience-tags/:id" => "experience_tags#destroy"
end
