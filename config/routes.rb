Rails.application.routes.draw do
  resources :registers
  resources :circulars
  resources :units
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'welcome#home'

end
