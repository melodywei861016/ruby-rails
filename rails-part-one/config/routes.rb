Rails.application.routes.draw do
  resources :mirrors do
  	resources :members
end
