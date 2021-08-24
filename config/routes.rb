Rails.application.routes.draw do
  get "/experiences" => "experiences#index"
  get "/experiences-true" => "experiences#index_true"

  get "/experiences/:id" => "experiences#show"

  post "/experiences" => "experiences#create"

  patch "experiences/:id" => "experiences#update"

  delete "experiences/:id" => "experiences#destroy"

  get "/tags" => "tags#index"

  get "/tags/:id" => "tags#show"

  post "/users" => "users#create"

  patch "/users/:id" => "users#update"

  get "/users" => "users#index"

  get "/users/:id" => "users#show"

  post "/sessions" => "sessions#create"

  post "/experience-tags" => "experience_tags#create"

  delete "/experience-tags/:id" => "experience_tags#destroy"

  get "/experience-tags" => "experience_tags#index"

  get "/experience-tags/:id" => "experience_tags#show"
end
