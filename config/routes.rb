Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  post 'books/create'
  get 'books/destroy'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
