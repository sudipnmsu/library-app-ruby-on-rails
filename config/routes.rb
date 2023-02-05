Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  root to: 'book#list'

  # book
  get 'book/list', to: 'book#list'
  get 'book/new', to: 'book#new'
  post 'book/create', to: 'book#create'
  patch 'book/update', to: 'book#update'
  get 'book/show', to: 'book#show'
  get 'book/edit', to: 'book#edit'
  get 'book/delete', to: 'book#delete'
  get 'book/show_books', to: 'book#show_books'
  get 'book/show_authors', to: 'book#show_authors'
  #get 'author/list', to: 'book#show_authors'

  # author
  get 'author/list', to: 'author#list'
  get 'author/new', to: 'author#new'
  post 'author/create', to: 'author#create'
  patch 'author/update', to: 'author#update'
  get 'author/show', to: 'author#show'
  get 'author/edit', to: 'author#edit'
  get 'author/delete', to: 'author#delete'
  get 'author/show_books', to: 'author#show_books'

end
