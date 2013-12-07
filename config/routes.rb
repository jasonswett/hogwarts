Hogwarts::Application.routes.draw do
  root to: 'welcome#index'

  get '/houses' => 'houses#List'
  resources :students
end
