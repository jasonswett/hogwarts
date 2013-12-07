Hogwarts::Application.routes.draw do
  root to: 'welcome#index'
  resources :students
  resources :houses
end
