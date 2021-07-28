Rails.application.routes.draw do
  get "/experiences" => "experiences#index"

  get "/experiences/:id" => "experiences#show"

  post "/experiences" => "experiences#create"

  patch "experiences/:id" => "experiences#update"

  delete "experiences/:id" => "experiences#destroy"

  get "/tags" => "tags#index"

  post "/users" => "users#create"

  patch "/users/:id" => "users#update"

  post "/sessions" => "sessions#create"

  get "/experience-tags" => "experience_tags#index"

  get "/experience-tags/:id" => "experience_tags#show"
end
