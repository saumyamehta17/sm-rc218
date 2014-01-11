SmRc218::Application.routes.draw do
  resources :email_contents
  root 'email_contents#new'
end
