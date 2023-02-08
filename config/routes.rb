Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'author', to: 'author#show'
  get 'author/:id', to: 'author#personal'
  delete 'author/delete/:id', to: 'author#delete'
  post '/create', to: 'author#create'
  get 'book', to: 'book#show'
  get 'book/:id', to: 'book#personal'
  # get 'book/delete/:id', to: 'book#delete'
  post 'book/creation', to: 'book#create'
  delete 'book/delete/:id', to: 'book#delete'
end
