Rails.application.routes.draw do
  get 'cats/index'
  get 'cats/show'
  get 'cats/new'
  get 'cats/create'
  get 'cats/edit'
  get 'cats/update'
  get 'cats/delete'
  # Root/home page
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
