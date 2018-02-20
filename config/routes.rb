Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post '/users' => 'users#create'

  get '/character_sheets' => 'character_pages#index'
  post '/character_sheets' => 'character_pages#create'
  get '/character_sheets/:id' => 'character_pages#show'
  patch '/character_sheets/:id' => 'character_pages#update'
  delete '/character_sheets/:id' => 'character_pages#destroy'
end
