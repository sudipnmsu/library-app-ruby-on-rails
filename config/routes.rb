Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # book
  get 'book/list'
  get 'book/new'
  post 'book/create'
  patch 'book/update'
  get 'book/list'
  get 'book/show'
  get 'book/edit'
  get 'book/delete'
  get 'book/update'
  get 'book/show_authors'

  # author
  get 'author/list'
  get 'author/new'
  post 'author/create'
  patch 'author/update'
  get 'author/list'
  get 'author/show'
  get 'author/edit'
  get 'author/delete'
  get 'author/update'
  get 'author/show_books'
end
