Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  post 'books/create'
  delete 'books/destroy'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
