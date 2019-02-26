Rails.application.routes.draw do
  # Root/home page
  root 'cats#welcome'
  # Show all cats
  get 'cats/' => 'cats#index'
  # Render page to create new cat
  get 'cats/new' => 'cats#new', as: :new_cat
  # Show single cat
  get 'cats/:id' => 'cats#show', as: :cat
  # Action to create new cat
  post 'cats/' => 'cats#create'
  # Render page to edit cat
  get 'cats/:id/edit' => 'cats#edit', as: :edit_cat
  # Action to update/edit cat
  patch 'cats/:id' => 'cats#update'
  # Action to delete/destroy cat
  delete 'cats/:id' => 'cats#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
